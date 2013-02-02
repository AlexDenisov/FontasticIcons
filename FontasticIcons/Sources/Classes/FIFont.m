//
//  FIFont.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIFont+Private.h"

static NSMutableDictionary *fonts;

@implementation FIFont {
    NSDictionary *_glyphMap;
}

+ (instancetype)fontWithResourcePath:(NSString *)aResource {
    static dispatch_once_t once[1];
    dispatch_once(once, ^{ fonts = [NSMutableDictionary dictionary]; });
    if (!fonts[aResource]) @synchronized (fonts) {
        NSString *directory = aResource.stringByDeletingLastPathComponent;
        NSString *path = [[NSBundle mainBundle] pathForResource:aResource.stringByDeletingPathExtension.lastPathComponent
                                                         ofType:aResource.pathExtension
                                                    inDirectory:directory.length ? directory : @"Fonts"];
        fonts[aResource] = [[self alloc] initWithFontData:[NSData dataWithContentsOfFile:path]];
    }
    return fonts[aResource];
}

- (id)initWithFontData:(NSData *)aData {
    if (self = [super init]) {
        CGDataProviderRef fontProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef) aData);
        CGFontRef cgFont = CGFontCreateWithDataProvider(fontProvider);
        _textFont = CTFontCreateWithGraphicsFont(cgFont, 0, NULL, NULL);
        CGFontRelease(cgFont);
        CGDataProviderRelease(fontProvider);
    }
    return self;
}

- (NSString *)name {
    return (__bridge NSString *) CTFontCopyFullName(self.textFont);
}

- (NSDictionary *)glyphMap {
    if (!_glyphMap) {
        NSString *path = [[NSBundle mainBundle] pathForResource:self.name ofType:@"strings" inDirectory:@"Strings"];
        NSMutableDictionary *glyphMap = [NSMutableDictionary dictionaryWithContentsOfFile:path];
        [glyphMap enumerateKeysAndObjectsUsingBlock:^(NSString *name, NSString *glyph, BOOL *stop) {
            if (glyphMap[glyph]) { // value is non-recursive alias
                glyphMap[name] = glyphMap[glyph]; // deprecated key lookup by alias
            }
        }];
        _glyphMap = glyphMap;
    }
    return _glyphMap;
}

@end
