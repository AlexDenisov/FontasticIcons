//
//  FIEntypoIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIEntypoIcon.h"
#import "FIFont.h"

@implementation FIEntypoIcon

#pragma mark - Overriden methods

+ (FIFont *)font {
    return [[FIFont class] fontWithResourcePath:@"Entypo.otf"];
}

@end
