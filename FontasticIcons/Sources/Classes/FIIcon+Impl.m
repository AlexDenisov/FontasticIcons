//
//  FIIcon(Impl)
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIcon+Impl.h"

@implementation FIIcon (Impl)

#pragma mark self
+ (NSArray *)bundledFonts {
    static NSArray *bundledFonts;
    static dispatch_once_t once[1];
    dispatch_once(once, ^{
        bundledFonts = [[NSSet setWithArray:@[
            [FIEntypoIcon class],
            [FIEntypoSocialIcon class],
            [FIFontAwesomeIcon class],
            [FIIconicIcon class]
        ]] sortedArrayUsingDescriptors:@[
            [NSSortDescriptor sortDescriptorWithKey:@"font.name" ascending:YES]
        ]];
    });
    return bundledFonts;
}

@end
