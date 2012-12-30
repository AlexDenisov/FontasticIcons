//
//  FIIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIcon.h"
#import "FIUtils.h"
#import "FIFont.h"
#import "FIIcon_Private.h"
#import "FIMetaInfoManager.h"

@implementation FIIcon

+ (void)initialize {
    FIMetaInfoManager *manager = [FIMetaInfoManager sharedManager];
    [manager registerFont:[self iconFont]
                 forClass:self];
    [manager registerIconSet:[self iconsDictionary]
                    forClass:self];
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
    return [[FIMetaInfoManager sharedManager] fontForClass:self];
}

+ (FIIcon *)iconWithName:(NSString *)anIconName {
    return [[self alloc] initWithName:anIconName];
}

- (id)initWithName:(NSString *)anIconName {
    if (self = [self init]) {
        self.iconName = anIconName;
        self.iconString = [self.class iconKeyForName:anIconName];
    }
    return self;
}

+ (NSDictionary *)iconsDictionary {
    return nil;
}

+ (NSDictionary *)metaIconsDictionary {
    return [[FIMetaInfoManager sharedManager] iconSetForClass:self];
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

@end
