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

+ (instancetype)fontWithResourcePath:(NSString *)aPath {
    static dispatch_once_t once[1];
    dispatch_once(once, ^{ fonts = [NSMutableDictionary dictionary]; });
    if (!fonts[aPath]) @synchronized (fonts) {
        NSString *subpath = aPath.stringByDeletingLastPathComponent;
        fonts[aPath] = [[self alloc] initWithFontData:[NSData
                               dataWithContentsOfFile:[[NSBundle mainBundle]
                                      pathForResource:aPath.stringByDeletingPathExtension.lastPathComponent
                                               ofType:aPath.pathExtension
                                          inDirectory:subpath.length ? subpath : @"Fonts"]]];
    }
    return fonts[aPath];
}

- (id)initWithFontData:(NSData *)aData {
    if (self = [super init]) {
        CGDataProviderRef fontProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef) aData);
        CGFontRef cgFont = CGFontCreateWithDataProvider(fontProvider);
        CGDataProviderRelease(fontProvider);
        _textFont = CTFontCreateWithGraphicsFont(cgFont, 0, NULL, NULL);
        CGFontRelease(cgFont);
    }
    return self;
}

- (NSString *)name {
    return (__bridge_transfer NSString *) CTFontCopyFullName(self.textFont);
}

- (NSString *)postScriptName {
    return (__bridge_transfer NSString *) CTFontCopyPostScriptName(self.textFont);
}

- (NSString *)objcName {
    return [[NSRegularExpression regularExpressionWithPattern:@"\\W+"
                                                      options:NSRegularExpressionUseUnicodeWordBoundaries
                                                        error:nil]
                             stringByReplacingMatchesInString:self.name
                                                      options:(NSMatchingOptions) 0
                                                        range:NSMakeRange(0, self.name.length)
                                                 withTemplate:@""];
}

- (NSDictionary *)glyphMap {
    if (!_glyphMap) @synchronized(self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:self.objcName ofType:@"strings" inDirectory:@"Strings"];
        NSMutableDictionary *glyphMap = [NSMutableDictionary dictionaryWithContentsOfFile:path];
        [glyphMap enumerateKeysAndObjectsUsingBlock:^(NSString *name, NSString *glyph, BOOL *stop) {
            if (glyphMap[glyph]) { // value is non-recursive alias
                glyphMap[name] = glyphMap[glyph]; // deprecated key lookup by alias
            }
        }];
        _glyphMap = glyphMap.copy;
    }
    return _glyphMap;
}

- (void)dealloc {
    CFRelease(_textFont);
}

@end
