//
//  FIIconView.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIconView.h"
#import "FIIconLayer.h"

@implementation FIIconView

#pragma mark self
- (FIIconLayer *)iconLayer {
    return (id) self.layer;
}

- (CGFloat)padding {
    // prefer vertical padding value for relevance to landscape buttons
    return self.iconLayer.inset.y ? : self.iconLayer.inset.x;
}

- (void)setPadding:(CGFloat)padding {
    self.iconLayer.inset = CGPointMake(padding, padding);
}

#pragma mark self <FIIconRendering>
@dynamic inset, iconColor, icon;

#pragma mark super
+ (Class)layerClass {
    return [FIIconLayer class];
}

#pragma mark super : NSObject
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if ([self.iconLayer respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:self.iconLayer];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

@end
