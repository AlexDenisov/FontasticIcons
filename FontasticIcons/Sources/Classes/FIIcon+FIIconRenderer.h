//
//  FIIcon+FIIconRenderer.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIcon.h"
#import "FIIconLayer+FIRenderer.h"

@interface FIIcon (FIIconRenderer)

- (FIIconRendererRef)renderer;
- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color;
- (UIImage *)imageWithBounds:(CGRect)bounds color:(UIColor *)color shadowOffset:(CGSize)shadowOffset shadowColor:(UIColor *)shadowColor;

@end
