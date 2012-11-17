//
//  FIFont.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FIFont : NSObject

- (NSString *)fontName;

+ (FIFont *)entypoFont;
+ (FIFont *)entypoSocialFont;
+ (FIFont *)fontAwesomeFont;
+ (FIFont *)iconicFont;

@end
