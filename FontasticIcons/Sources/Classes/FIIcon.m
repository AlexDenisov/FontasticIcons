//
//  FIIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIcon+Impl.h"
#import "FIFont+Private.h"

static NSMutableDictionary *impls;

@implementation FIIcon

+ (void)initialize {
    if (self == [FIIcon class]) {
        impls = [NSMutableDictionary dictionary];
    } else {
        for (id fontName in self.fontNames) {
            NSAssert(!impls[fontName], @"%@ font name must be unique to %@", fontName, NSStringFromClass(self));
            impls[fontName] = self;
        }
    }
}

+ (NSArray *)iconNames {
    return [[self.class font].glyphMap.allKeys sortedArrayUsingSelector:@selector(compare:)];
}

+ (NSSet *)fontNames {
    return [NSSet setWithArray:@[ self.font.name, self.font.postScriptName, self.font.objcName ]];
}

+ (FIIcon *)iconWithName:(NSString *)anIconName fontName:(NSString *)aFontName {
    return [self bundledFonts], [impls[aFontName] iconWithName:anIconName]; // initialize registered subclasses
}

+ (instancetype)iconWithName:(NSString *)anIconName {
    FIIcon *icon = [[self alloc] initWithName:anIconName];
    return icon.glyph ? icon : nil;
}

- (id)initWithName:(NSString *)anIconName {
    if (self = [self init]) {
        _name = anIconName;
        _glyph = [self.class font].glyphMap[anIconName];
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    return [[self.class allocWithZone:zone] initWithName:self.name];
}

- (NSUInteger)hash {
    return [self.class font].hash ^ self.glyph.hash;
}

- (BOOL)isEqual:(id)other {
    FIIcon *icon = [other isKindOfClass:self.class] ? other : nil;
    return [[icon class].font isEqual:[self.class font]] && [icon.glyph isEqual:self.glyph];
}

@end
