//
//  FIFont_Private.h
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIFont.h"

@interface FIFont ()

+ (FIFont *)fontWithName:(NSString *)aName ofType:(NSString *)aType;
- (FIFont *)initWithFontName:(NSString *)aName ofType:(NSString *)aType;
- (NSString *)UIFontName;
- (CTFontRef)fontRef;

@end
