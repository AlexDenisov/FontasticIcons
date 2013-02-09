//
//  FIFont.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIFont+Private.h"

@implementation FIFont
{
    CTFontRef _font;
}

+ (instancetype)fontWithName:(NSString *)aName ofType:(NSString *)aType {
    return [[self alloc] initWithFontName:aName ofType:aType];
}

- (id)initWithFontName:(NSString *)aName ofType:(NSString *)aType {
    if (self = [super init]) {
        NSString *fontPath = [[NSBundle mainBundle] pathForResource:aName ofType:aType inDirectory:@"Fonts"];
        NSData *data = [[NSData alloc] initWithContentsOfFile:fontPath];
        CGDataProviderRef fontProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef)data);
        CGFontRef cgFont = CGFontCreateWithDataProvider(fontProvider);
        CGDataProviderRelease(fontProvider);
        self->_font = CTFontCreateWithGraphicsFont(cgFont, 0, NULL, NULL);
        CGFontRelease(cgFont);
    }
    return self;
}

- (CTFontRef)fontRef {
    return self->_font;
}

- (NSString *)fontName {
    return (__bridge_transfer NSString *)CTFontCopyFullName(self.fontRef);
}

- (void)dealloc {
    CFRelease(self->_font);
}

@end
