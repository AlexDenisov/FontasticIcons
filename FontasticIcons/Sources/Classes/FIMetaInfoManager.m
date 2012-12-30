//
//  FIMetaInfoManager.m
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIMetaInfoManager.h"
#import "FIFont.h"

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
                         forKey:aFont.fontName];
}

- (FIFont *)fontForClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    return [self->fonts valueForKey:key];
}

- (Class)iconClassForFontName:(NSString *)aName {
    return [self->iconClasses valueForKey:aName];
}

- (void)registerIconSet:(NSDictionary *)anIcons forClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    [self->iconSets setValue:anIcons
                      forKey:key];
}

- (NSDictionary *)iconSetForClass:(Class)aClass {
    NSString *key = NSStringFromClass(aClass);
    return [self->iconSets valueForKey:key];
}

@end
