//
//  FIIconicIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 17.11.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIconicIcon.h"
#import "FIFont+Private.h"

@implementation FIIconicIcon

+ (FIFont *)iconFont {
    return [[FIFont class] fontWithName:@"iconic" ofType:@"otf"];
}

@end
