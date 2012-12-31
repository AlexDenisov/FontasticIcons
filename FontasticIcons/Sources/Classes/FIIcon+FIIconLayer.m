//
//  FIIcon(FIIconLayer)
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIcon+FIIconLayer.h"
#import "FIIconLayer.h"

@implementation FIIcon (FIIconLayer)

#pragma mark self
- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color {
    FIIconLayer *renderer = [FIIconLayer layer];
    renderer.bounds = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    renderer.inset = bounds.origin;
    renderer.icon = self;
    renderer.iconColor = color;
    return renderer.image;
}

@end
