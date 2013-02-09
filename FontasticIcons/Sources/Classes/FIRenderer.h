//
//  FIRenderer.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 31.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

@protocol FIRenderer

@property(nonatomic, assign) CGRect bounds;

- (void)renderInContext:(CGContextRef)ctx;
- (UIImage *)image;

@end
