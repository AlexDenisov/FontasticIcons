//
//  FIUtils.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __has_feature(objc_arc)
    #define arcsafe_retain(X) (X)
    #define arcsafe_retain_unused(X)
    #define arcsafe_release(X)
    #define arcsafe_super_dealloc()
    #define arcsafe_autorelease(X) (X)
    #define arcsafe_autorelease_unused(X)
#else
    #define arcsafe_retain(X) [(X) retain]
    #define arcsafe_retain_unused(X) [(X) retain]
    #define arcsafe_release(X) [(X) release]
    #define arcsafe_super_dealloc() [super dealloc]
    #define arcsafe_autorelease(X) [(X) autorelease]
    #define arcsafe_autorelease_unused(X) [(X) autorelease]
#endif

