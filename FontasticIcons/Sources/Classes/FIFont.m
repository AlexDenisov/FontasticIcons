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

- (NSString *)glyphMapPath {
    return [[NSBundle mainBundle] pathForResource:self.name ofType:@"strings" inDirectory:@"Strings"];
}

- (NSDictionary *)glyphMap {
    if (!_glyphMap) @synchronized(self) {
        NSMutableDictionary *glyphMap = [NSMutableDictionary dictionaryWithContentsOfFile:self.glyphMapPath];
        [self.glyphAliasMap enumerateKeysAndObjectsUsingBlock:^(NSString *alias, NSString *key, BOOL *stop) {
            NSAssert(!glyphMap[alias], @"%@ %@ alias must not overwrite exisiting glyph", self.name, alias);
            NSAssert(glyphMap[key], @"%@ %@ glyph must exist for %@ alias", self.name, key, alias);
            glyphMap[alias] = glyphMap[key];
        }];
        _glyphMap = glyphMap.copy;
    }
    return _glyphMap;
}

- (NSDictionary *)glyphAliasMap {
    if ([self conformsToProtocol:@protocol(FIFontGlyphAliases)]) {
        return [NSDictionary dictionaryWithContentsOfFile:((id <FIFontGlyphAliases>) self).glyphAliasMapPath];
    }
    return nil;
}

@end
