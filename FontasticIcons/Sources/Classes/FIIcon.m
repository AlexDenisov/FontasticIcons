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
    return [[self iconsDictionary] allKeys];
}

+ (NSString *)iconKeyForName:(NSString *)aName {
    return [[self iconsDictionary] valueForKey:aName];
}

+ (FIFont *)iconFont {
    return [[FIMetaInfoManager sharedManager] fontForClass:self];
}

+ (FIIcon *)iconWithName:(NSString *)anIconName {
    FIIcon *icon = [self new];
    icon.iconName = anIconName;
    icon.iconString = [self iconKeyForName:anIconName];
    return arcsafe_autorelease(icon);
}

+ (NSDictionary *)iconsDictionary {
    return [[FIMetaInfoManager sharedManager] iconSetForClass:self];
}

@end
