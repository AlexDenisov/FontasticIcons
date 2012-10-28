//
//  FIUtils.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>


#if __has_feature( objc_arc )
    #define fi_arc_release(obj) {}
    #define fi_arc_dealloc {}
#else
    #define fi_arc_release(obj) [obj release]
    #define fi_arc_dealloc [super dealloc]
#endif
