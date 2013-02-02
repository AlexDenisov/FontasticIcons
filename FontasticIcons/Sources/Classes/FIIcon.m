//
//  FIIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <objc/runtime.h>
#import "FIIcon+Impl.h"
#import "FIFont+Private.h"

static NSMutableDictionary *impls;

@implementation FIIcon

+ (void)initialize {
    if (self == [FIIcon class]) {
        impls = [NSMutableDictionary dictionary];
    } else {
        NSAssert(!impls[self.font.name], @"FIIcon subclass must have unique font name");
        impls[self.font.name] = self;
    }
}

+ (NSArray *)iconNames {
    return [self.class font].glyphMap.allKeys;
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

#pragma mark - Equality

- (NSUInteger)hash {
    return [self.class font].hash ^ self.glyph.hash;
}

- (BOOL)isEqual:(id)other {
    FIIcon *icon = [other isKindOfClass:self.class] ? other : nil;
    return [[icon class].font isEqual:[self.class font]] && [icon.glyph isEqual:self.glyph];
}

#pragma mark - Forwarding

+ (BOOL)resolveClassMethod:(SEL)sel {
    NSString *selectorString = NSStringFromSelector(sel);
    if ([selectorString hasSuffix:@"Icon"]) {
        Method m = class_getClassMethod(self, @selector(dynamicIcon));
        return class_addMethod(object_getClass(self), sel, method_getImplementation(m), method_getTypeEncoding(m));
    }
    return [super resolveClassMethod:sel];
}

+ (FIIcon *)dynamicIcon {
    NSString *selectorString = NSStringFromSelector(_cmd);
    return [self iconWithName:[selectorString substringToIndex:selectorString.length - 4]];
}

@end
