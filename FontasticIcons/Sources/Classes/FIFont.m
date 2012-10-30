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
    FIFont *font = [[self alloc] initWithFontName:@"Entypo"
                                           ofType:@"otf"];
    return fi_autorelease(font);
}

+ (FIFont *)entypoSocialFont {
    FIFont *font = [[self alloc] initWithFontName:@"Entypo-Social"
                                           ofType:@"otf"];
    return fi_autorelease(font);
}

@end
