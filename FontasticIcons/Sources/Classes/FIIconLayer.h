//
//  FIIconLayer.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 29.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "FIIconRendering.h"

@interface FIIconLayer : CALayer <FIIconRendering>

+ (UIImage *)imageWithBounds:(CGRect)bounds icon:(FIIcon *)icon color:(UIColor *)color;
- (UIImage *)image;

@end
