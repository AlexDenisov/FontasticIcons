//
//  FIFont.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIFont_Private.h"
#import "FIFont.h"
#import "FIUtils.h"

@implementation FIFont
{
    CTFontRef _font;
}

+ (FIFont *)fontWithName:(NSString *)aName ofType:(NSString *)aType {
    FIFont *font = [[FIFont alloc] initWithFontName:aName
                                             ofType:aType];
    return arcsafe_autorelease(font);
}

- (id)initWithFontName:(NSString *)aName ofType:(NSString *)aType {
    self = [super init];
    if (self) {
        NSString *fontPath = [[NSBundle mainBundle] pathForResource:aName
                                                             ofType:aType];
        NSData *data = [[NSData alloc] initWithContentsOfFile:fontPath];
        CGDataProviderRef fontProvider = CGDataProviderCreateWithCFData((CFDataRef)data);
        [data release];
        
        CGFontRef cgFont = CGFontCreateWithDataProvider(fontProvider);
        CGDataProviderRelease(fontProvider);
        
        CTFontDescriptorRef fontDescriptor = CTFontDescriptorCreateWithAttributes((CFDictionaryRef)@{});
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

+ (FIFont *)entypoFont {
    return [self fontWithName:@"Entypo" ofType:@"otf"];
}

+ (FIFont *)entypoSocialFont {
    return [self fontWithName:@"Entypo-Social" ofType:@"otf"];
}

@end
