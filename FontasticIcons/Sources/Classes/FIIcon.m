//
//  FIIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <objc/runtime.h>
#import "FIIcon.h"
#import "FIFont.h"
#import "FIIcon+Private.h"
#import "FIMetaInfoManager.h"

@implementation FIIcon

+ (void)initialize {
    if (self != [FIIcon class]) {
        [[self manager] registerFont:[self iconFont]
                            forClass:self];
        [[self manager] registerIconSet:[self iconsDictionary]
                               forClass:self];
    }
}

+ (NSArray *)iconNames {
    return [[self metaIconsDictionary] allKeys];
}

+ (NSString *)iconKeyForName:(NSString *)aName {
    return [[self metaIconsDictionary] valueForKey:aName];
}

+ (FIFont *)iconFont {
    return nil;
}

+ (FIFont *)metaFont {
    return [[self manager] fontForClass:self];
}

+ (FIIcon *)iconWithName:(NSString *)anIconName fontSetName:(NSString *)aFontName {
    return [[[self manager] iconClassForFontName:aFontName] iconWithName:anIconName];
}

+ (instancetype)iconWithName:(NSString *)anIconName {
    FIIcon *icon = [[self alloc] initWithName:anIconName];
    return icon.iconString ? icon : nil;
}

- (id)initWithName:(NSString *)anIconName {
    if (self = [self init]) {
        _iconName = anIconName;
        _iconString = [self.class metaIconsDictionary][anIconName];
    }
    return self;
}

+ (NSDictionary *)iconsDictionary {
    return [NSDictionary dictionaryWithContentsOfFile:[[
            NSBundle mainBundle] pathForResource:[self fontSetName] ofType:@"strings" inDirectory:@"Strings"]];
}

+ (NSDictionary *)metaIconsDictionary {
    return [[self manager] iconSetForClass:self];
}

+ (NSString *)fontSetName {
    return [[self metaFont] fontName];
}

- (NSString *)fontSetName {
    return [[self class] fontSetName];
}

- (id)copyWithZone:(NSZone *)zone {
    return [[self.class allocWithZone:zone] initWithName:self.iconName];
}

+ (FIMetaInfoManager *)manager {
    return [FIMetaInfoManager sharedManager];
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
