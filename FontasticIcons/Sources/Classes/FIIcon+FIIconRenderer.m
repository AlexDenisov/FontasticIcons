//
//  FIIcon(FIIconRenderer)
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIcon+FIIconRenderer.h"

@implementation FIIcon (FIIconRenderer)

#pragma mark self
+ (FIIconRenderer)renderer {
    return [FIIconLayer layer];
}

- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color {
    FIIconRenderer renderer = [self.class renderer];
    renderer.bounds = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    renderer.inset = bounds.origin;
    renderer.iconColor = color;
    renderer.icon = self;
    return renderer.image;
}

@end
