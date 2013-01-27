//
//  FIFont.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIFont_Private.h"

@implementation FIFont
{
    CTFontRef _font;
}

+ (FIFont *)fontWithName:(NSString *)aName ofType:(NSString *)aType {
    return [[FIFont alloc] initWithFontName:aName ofType:aType];
}

- (id)initWithFontName:(NSString *)aName ofType:(NSString *)aType {
    self = [super init];
    if (self) {
        NSString *fontPath = [[NSBundle mainBundle] pathForResource:aName ofType:aType inDirectory:@"Fonts"];
        NSData *data = [[NSData alloc] initWithContentsOfFile:fontPath];
        CGDataProviderRef fontProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef)data);

        CGFontRef cgFont = CGFontCreateWithDataProvider(fontProvider);
        CGDataProviderRelease(fontProvider);
        
        CTFontDescriptorRef fontDescriptor = CTFontDescriptorCreateWithAttributes((__bridge CFDictionaryRef)@{});
        CTFontRef font = CTFontCreateWithGraphicsFont(cgFont, 0, NULL, fontDescriptor);
        CFRelease(fontDescriptor);
        CGFontRelease(cgFont);
        self->_font = font;
    }
    return self;
}

- (CTFontRef)fontRef {
    return self->_font;
}

- (NSString *)fontName {
    return (__bridge_transfer NSString *)CTFontCopyFullName(self.fontRef);
}

#pragma mark - Fonts

+ (FIFont *)entypoFont {
    return [self fontWithName:@"Entypo" ofType:@"otf"];
}

+ (FIFont *)entypoSocialFont {
    return [self fontWithName:@"Entypo-Social" ofType:@"otf"];
}

+ (FIFont *)fontAwesomeFont {
    return [self fontWithName:@"fontawesome" ofType:@"ttf"];
}

+ (FIFont *)iconicFont {
    return [self fontWithName:@"iconic" ofType:@"otf"];
}

@end
