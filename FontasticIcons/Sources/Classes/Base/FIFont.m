//
//  FIFont.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIFont.h"

@implementation FIFont
{
    CTFontRef _font;
}

+ (FIFont *)fontWithName:(NSString *)aFontName ofType:(NSString *)aFontType {
    FIFont *font = [FIFont new];
    return font;
}

@end
