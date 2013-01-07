//
//  FIMetaInfoManager.m
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIMetaInfoManager.h"
#import "FIIcon+Impl.h"

@implementation FIMetaInfoManager
{
    NSMutableDictionary *fonts;
    NSMutableDictionary *iconClasses;
    NSMutableDictionary *iconSets;
}

static id _instance = nil;

+ (FIMetaInfoManager *)sharedManager {
    if (_instance == nil) {
        _instance = [self new];
    }
    return _instance;
}

- (id)init {
    self = [super init];
    if (self) {
        self->fonts = [NSMutableDictionary new];
        self->iconClasses = [NSMutableDictionary new];
        self->iconSets = [NSMutableDictionary new];
    }
    return self;
}

- (void)registerFont:(FIFont *)aFont forClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    [self->fonts setValue:aFont
                   forKey:key];
    [self->iconClasses setValue:aClass
                         forKey:[aClass fontSetName]];
}

- (FIFont *)fontForClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    return [self->fonts valueForKey:key];
}

- (Class)iconClassForFontName:(NSString *)aName {
    static dispatch_once_t once[1];
    dispatch_once(once, ^{
        [FIIcon bundledFonts]; // initialize provided implementations
    });
    return [self->iconClasses valueForKey:aName];
}

- (void)registerIconSet:(NSDictionary *)anIcons forClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    NSMutableDictionary *icons = anIcons.mutableCopy;
    [icons enumerateKeysAndObjectsUsingBlock:^(NSString *name, NSString *glyph, BOOL *stop) {
        if (icons[glyph]) { // value is non-recursive alias
            icons[name] = icons[glyph]; // deprecated key lookup by alias
        }
    }];
    [self->iconSets setValue:icons.copy
                      forKey:key];
}

- (NSDictionary *)iconSetForClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    return [self->iconSets valueForKey:key];
}

@end
