//
//  FIIcon+Private.h
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIcon.h"

@class FIFont;

@interface FIIcon ()

+ (NSString *)iconKeyForName:(NSString *)anIconName;
+ (NSDictionary *)iconsDictionary;
+ (FIFont *)iconFont;

+ (FIFont *)metaFont;
+ (NSDictionary *)metaIconsDictionary;

@end
