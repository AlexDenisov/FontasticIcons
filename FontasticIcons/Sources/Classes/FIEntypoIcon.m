//
//  FIEntypoIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIEntypoIcon.h"
#import "FIFont+Private.h"

@implementation FIEntypoIcon

#pragma mark - Overriden methods

+ (FIFont *)iconFont {
    return [[FIFont class] fontWithName:@"Entypo" ofType:@"otf"];
}

@end
