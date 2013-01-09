//
//  FIIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <objc/runtime.h>
#import "FIIcon.h"
#import "FIUtils.h"
#import "FIFont.h"
#import "FIIcon_Private.h"
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

- (void)dealloc {
    self.iconString = nil;
    self.iconName = nil;
    arcsafe_super_dealloc();
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

+ (FIIcon *)iconWithName:(NSString *)anIconName {
    FIIcon *icon = arcsafe_autorelease([[self alloc] initWithName:anIconName]);
    return icon.iconString ? icon : nil;
}

- (id)initWithName:(NSString *)anIconName {
    if (self = [self init]) {
        self.iconName = anIconName;
        self.iconString = [self.class iconKeyForName:anIconName];
    }
    return self;
}

+ (NSDictionary *)iconsDictionary {
    return [NSDictionary dictionaryWithContentsOfFile:[[
            NSBundle mainBundle] pathForResource:self.fontStringsName ofType:@"strings" inDirectory:@"Strings"]];
}

+ (NSDictionary *)metaIconsDictionary {
    return [[self manager] iconSetForClass:self];
}

+ (NSString *)fontStringsName {
    return [[NSRegularExpression regularExpressionWithPattern:@"\\W+"
                                                      options:NSRegularExpressionUseUnicodeWordBoundaries
                                                        error:nil]
                             stringByReplacingMatchesInString:self.fontSetName
                                                      options:(NSMatchingOptions) 0
                                                        range:NSMakeRange(0, self.fontSetName.length)
                                                 withTemplate:@""];
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
        Method m = class_getClassMethod(self, @selector(iconWithCmd));
        return class_addMethod(object_getClass(self), sel, method_getImplementation(m), method_getTypeEncoding(m));
    }
    return [super resolveClassMethod:sel];
}

+ (FIIcon *)iconWithCmd {
    NSString *selectorString = NSStringFromSelector(_cmd);
    return [self iconWithName:[selectorString substringToIndex:selectorString.length - 4]];
}

@end
