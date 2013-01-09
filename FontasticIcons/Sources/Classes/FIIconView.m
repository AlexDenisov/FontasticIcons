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
@dynamic icon, iconColor, inset;

#pragma mark super
+ (Class)layerClass {
    return [FIIconLayer class];
}

#pragma mark super : NSObject
// http://www.mikeash.com/pyblog/friday-qa-2009-03-27-objective-c-message-forwarding.html
- (id)forwardingTargetForSelector:(SEL)aSelector {
    FIIconLayer *target = self.iconLayer;
    return [target respondsToSelector:aSelector] ? target : [super forwardingTargetForSelector:aSelector];
}

@end
