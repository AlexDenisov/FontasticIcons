//
//  FIIcon(Impl)
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIcon+Impl.h"

@implementation FIIcon (Impl)

#pragma mark self
+ (NSArray *)bundledFonts {
    return @[
             [FIEntypoIcon class],
             [FIEntypoSocialIcon class],
             [FIFontAwesomeIcon class],
             [FIIconicIcon class]
           ];
}

@end
