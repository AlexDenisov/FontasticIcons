//
//  FIFontAwesomeIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 17.11.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIFontAwesomeIcon.h"
#import "FIFont.h"

@implementation FIFontAwesomeIcon

+ (FIFont *)font {
    return [[FIFont class] fontWithResourcePath:@"fontawesome.ttf"];
}

@end
