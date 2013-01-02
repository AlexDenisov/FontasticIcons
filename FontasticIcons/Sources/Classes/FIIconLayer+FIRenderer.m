//
//  FIIconLayer(FIRenderer)
//  FontasticIcons
//
//  Created by Jonathan Toland on 1.1.13.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIIconLayer+FIRenderer.h"
#import "FIUtils.h"

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
    CTLineRef line = CTLineCreateWithAttributedString(arcsafe_toll_free_bridge(CFAttributedStringRef, self.iconString));
    [self setTransformForContext:ctx
                          bounds:CGRectInset(CGContextGetClipBoundingBox(ctx), self.inset.x, self.inset.y)
                      iconBounds:CTLineGetImageBounds(line, ctx)];
    CTLineDraw(line, ctx);
    CFRelease((CFTypeRef) line);
    [super drawInContext:ctx];
}

#pragma mark private
- (void)setTransformForContext:(CGContextRef)ctx bounds:(CGRect)bounds iconBounds:(CGRect)iconBounds {
    CGPoint scale = [self scaleForBounds:bounds iconBounds:iconBounds];
    CGAffineTransform t = CGAffineTransformScale(CGAffineTransformMakeTranslation(
            bounds.origin.x, bounds.size.height + bounds.origin.y), scale.x, -scale.y);
    CGContextConcatCTM(ctx, t);
    CGRect scaleBounds = CGRectApplyAffineTransform(bounds, CGAffineTransformInvert(t));
    CGContextSetTextPosition(ctx,
            -iconBounds.origin.x + (scaleBounds.size.width - iconBounds.size.width) / 2,
            -iconBounds.origin.y + (scaleBounds.size.height - iconBounds.size.height) / 2);
}

- (CGPoint)scaleForBounds:(CGRect)bounds iconBounds:(CGRect)iconBounds {
    CGFloat sx = bounds.size.width / iconBounds.size.width;
    CGFloat sy = bounds.size.height / iconBounds.size.height;
    if ([self.contentsGravity isEqualToString:kCAGravityResizeAspectFill]) {
        sx = sy = fmaxf(sx, sy);
    } else if (![self.contentsGravity isEqualToString:kCAGravityResize]) {
        sx = sy = fminf(sx, sy);
    }
    return CGPointMake(sx, sy);
}

@end
