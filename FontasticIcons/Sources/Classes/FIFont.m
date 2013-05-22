//
//  FIFont.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIFont+Private.h"

static NSMutableDictionary *fonts;

@implementation FIFont {
    NSDictionary *_glyphMap;
}

+ (instancetype)fontWithResourcePath:(NSString *)aPath {
    static dispatch_once_t once[1];
    dispatch_once(once, ^{ fonts = [NSMutableDictionary dictionary]; });
    aPath = [self pathForResource:aPath];
    if (!fonts[aPath]) @synchronized (fonts) {
        fonts[aPath] = [[self alloc] initWithFontData:[NSData dataWithContentsOfFile:aPath]];
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

- (NSString *)glyphsPath {
    return [self.objcName stringByAppendingString:@".strings"];
}

- (NSDictionary *)glyphMap {
    if (!_glyphMap) @synchronized(self) {
        NSString *path = [self.class pathForResource:self.glyphsPath];
        _glyphMap = self.aliasMap;
        if (_glyphMap.count) {
            NSMutableDictionary *glyphMap = [NSMutableDictionary dictionaryWithContentsOfFile:path];
            [_glyphMap enumerateKeysAndObjectsUsingBlock:^(NSString *alias, NSString *name, BOOL *stop) {
                NSAssert(!glyphMap[alias], @"%@ %@ alias must not overwrite exisiting glyph", self.name, alias);
                NSAssert(glyphMap[name], @"%@ %@ glyph must exist for %@ alias", self.name, name, alias);
                glyphMap[alias] = glyphMap[name];
            }];
            _glyphMap = glyphMap.copy;
        } else {
            _glyphMap = [NSMutableDictionary dictionaryWithContentsOfFile:path];
        }
    }
    return _glyphMap;
}

- (NSDictionary *)aliasMap {
    BOOL conforms = [self conformsToProtocol:@protocol(FIFontGlyphAliases)];
    return conforms ? [NSDictionary dictionaryWithContentsOfFile:[self.class
                                                 pathForResource:((id <FIFontGlyphAliases>) self).aliasesPath]] : nil;
}

- (void)dealloc {
    CFRelease(_textFont);
}

+ (NSString *)pathForResource:(NSString *)aPath {
    return [[NSBundle mainBundle] pathForResource:aPath.stringByDeletingPathExtension.lastPathComponent
                                           ofType:aPath.pathExtension];
}

@end
