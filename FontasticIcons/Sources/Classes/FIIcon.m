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
    FIIcon *icon = [self new];
    icon.iconName = anIconName;
    icon.iconString = [self iconKeyForName:anIconName];
    return arcsafe_autorelease(icon);
}

+ (NSDictionary *)iconsDictionary {
    return nil;
}

+ (NSDictionary *)metaIconsDictionary {
    return [[FIMetaInfoManager sharedManager] iconSetForClass:self];
}

+ (NSString *)fontKitName {
    return nil;
}

- (NSString *)fontKitName {
    return [[self class] fontKitName];
}

@end
