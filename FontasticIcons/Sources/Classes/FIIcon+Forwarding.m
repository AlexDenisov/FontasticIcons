//
//  FIIcon+Forwarding.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 9.2.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import <objc/runtime.h>
#import "FIIcon.h"

@implementation FIIcon (Forwarding)

+ (BOOL)resolveClassMethod:(SEL)sel {
    NSString *selectorString = NSStringFromSelector(sel);
    if ([selectorString hasSuffix:@"Icon"]) {
        Method m = class_getClassMethod(self, @selector(iconWithCmd));
        return class_addMethod(object_getClass(self), sel, method_getImplementation(m), method_getTypeEncoding(m));
    }
    return [super resolveClassMethod:sel];
}

+ (instancetype)iconWithCmd {
    NSString *selectorString = NSStringFromSelector(_cmd);
    return [self iconWithName:[selectorString substringToIndex:selectorString.length - 4]];
}

@end
