//
//  FIUtils.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __has_feature(objc_arc)
    #define arcsafe_retain(...) (__VA_ARGS__)
    #define arcsafe_retain_unused(...)
    #define arcsafe_release(...)
    #define arcsafe_super_dealloc()
    #define arcsafe_autorelease(...) (__VA_ARGS__)
    #define arcsafe_autorelease_unused(__VA_ARGS__)
    #define arcsafe_toll_free_bridge(TYPE, ...) ((__bridge TYPE) __VA_ARGS__)
#else
    #define arcsafe_retain(...) [(__VA_ARGS__) retain]
    #define arcsafe_retain_unused(...) [(__VA_ARGS__) retain]
    #define arcsafe_release(...) [(__VA_ARGS__) release]
    #define arcsafe_super_dealloc() [super dealloc]
    #define arcsafe_autorelease(...) [(__VA_ARGS__) autorelease]
    #define arcsafe_autorelease_unused(...) [(__VA_ARGS__) autorelease]
    #define arcsafe_toll_free_bridge(TYPE, ...) ((TYPE) __VA_ARGS__)
#endif

