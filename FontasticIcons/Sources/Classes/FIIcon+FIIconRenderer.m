//
//  FIIcon+FIIconRenderer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIcon+FIIconRenderer.h"

@implementation FIIcon (FIIconRenderer)

#pragma mark self
- (FIIconRendererRef)renderer {
    FIIconLayer *renderer = [FIIconLayer layer];
    renderer.icon = self;
    return renderer;
}

- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color {
    return [self imageWithBounds:bounds color:color shadowOffset:CGSizeZero shadowColor:nil];
}

- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color shadowOffset:(CGSize)shadowOffset shadowColor:(UIColor *)shadowColor {
    FIIconRendererRef renderer = self.renderer;
    renderer.bounds = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    renderer.iconInset = bounds.origin;
    renderer.iconColor = color;
    renderer.iconShadowColor = shadowColor;
    renderer.iconShadowOffset = shadowOffset;
    return renderer.image;
}

@end
