//
//  FIIconLayer+FIRenderer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 1.1.13.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIIconLayer+FIRenderer.h"

@implementation FIIconLayer (FIRenderer)

#pragma mark self <FIRenderer>
@dynamic bounds;

- (UIImage *)image {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
    [self renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

#pragma mark super
- (void)drawInContext:(CGContextRef)ctx {
    CTLineRef line = CTLineCreateWithAttributedString((__bridge CFAttributedStringRef) self.iconString);
    [self setTransformForContext:ctx
                          bounds:CGRectInset(CGContextGetClipBoundingBox(ctx), self.inset.x, self.inset.y)
                      iconBounds:CTLineGetImageBounds(line, ctx)];
    CTLineDraw(line, ctx);
    CFRelease((CFTypeRef) line);
    [super drawInContext:ctx];
}

- (void)renderInContext:(CGContextRef)ctx {
    if (self.geometryFlipped) {
        CGContextConcatCTM(ctx, CGAffineTransformMake(1, 0, 0, -1, 0, CGContextGetClipBoundingBox(ctx).size.height));
    }
    [super renderInContext:ctx];
}

#pragma mark private
- (void)setTransformForContext:(CGContextRef)ctx bounds:(CGRect)bounds iconBounds:(CGRect)iconBounds {
    CGAffineTransform scale = [self scaleForBounds:bounds iconBounds:iconBounds];
    CGContextSetTextMatrix(ctx, scale);
    iconBounds = CGRectApplyAffineTransform(iconBounds, scale);
    CGContextSetTextPosition(ctx,
            bounds.origin.x - iconBounds.origin.x + (bounds.size.width - iconBounds.size.width) / 2,
            bounds.origin.y - iconBounds.origin.y + (bounds.size.height - iconBounds.size.height) / 2);
}

- (CGAffineTransform)scaleForBounds:(CGRect)bounds iconBounds:(CGRect)iconBounds {
    CGFloat sx = bounds.size.width / iconBounds.size.width;
    CGFloat sy = bounds.size.height / iconBounds.size.height;
    if ([self.contentsGravity isEqualToString:kCAGravityResizeAspectFill]) {
        sx = sy = fmaxf(sx, sy);
    } else if (![self.contentsGravity isEqualToString:kCAGravityResize]) {
        sx = sy = fminf(sx, sy);
    }
    return CGAffineTransformMakeScale(sx, sy);
}

@end
