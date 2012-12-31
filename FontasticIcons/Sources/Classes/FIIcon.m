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
    return nil;
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

@end
