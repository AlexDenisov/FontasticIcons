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

@implementation FIIcon

- (void)dealloc {
    self.iconString = nil;
    self.iconName = nil;
    fi_arc_dealloc;
}

+ (NSArray *)iconNames {
    return [[self iconsDictionary] allKeys];
}

+ (NSString *)iconKeyForName:(NSString *)aName {
    return [[self iconsDictionary] valueForKey:aName];
}

+ (FIFont *)iconFont {
    return nil;
}

+ (FIIcon *)iconWithName:(NSString *)anIconName {
    FIIcon *icon = [self new];
    icon.iconName = anIconName;
    icon.iconString = [self iconKeyForName:anIconName];
    return fi_autorelease(icon);
}

+ (NSDictionary *)iconsDictionary {
    return nil;
}

@end
