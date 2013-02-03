//
//  FIIcon+FIIconRenderer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIcon+FIIconRenderer.h"

@implementation FIIcon (FIIconRenderer)

#pragma mark self
+ (FIIconRendererRef)rendererWithName:(NSString *)anIconName {
    return ((FIIcon *) [self iconWithName:anIconName]).renderer;
}

- (FIIconRendererRef)renderer {
    FIIconLayer *renderer = [FIIconLayer layer];
    renderer.icon = self;
    return renderer;
}

- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color {
    FIIconRendererRef renderer = self.renderer;
    renderer.bounds = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    renderer.iconInset = bounds.origin;
    renderer.iconColor = color;
    return renderer.image;
}

@end
