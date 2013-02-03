//
//  FIIconLayer+FIRenderer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 1.1.13.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIIconLayer+FIRenderer.h"
#import "FIIcon.h"
#import "FIFont+Private.h"

typedef struct {
    CGContextRef gfx;
    CTLineRef line;
    CGRect bounds;
    CGRect iconBounds;
    CGPoint scale;
} IconContext;

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
    IconContext iconCtx;
    iconCtx.gfx = ctx;
    [self drawInIconContext:iconCtx];
    [super drawInContext:ctx];
}

- (void)renderInContext:(CGContextRef)ctx {
    if (self.geometryFlipped) {
        CGContextConcatCTM(ctx, CGAffineTransformMake(1, 0, 0, -1, 0, CGContextGetClipBoundingBox(ctx).size.height));
    }
    [super renderInContext:ctx];
}

#pragma mark private
- (void)drawInIconContext:(IconContext)ctx {
    [self setIconAttribute:kCTStrokeWidthAttributeName value:NULL];
    ctx.line = CTLineCreateWithAttributedString((__bridge CFAttributedStringRef) self.iconString);
    ctx.bounds = CGRectInset(CGContextGetClipBoundingBox(ctx.gfx), self.iconInset.x, self.iconInset.y);
    ctx.iconBounds = CTLineGetImageBounds(ctx.line, ctx.gfx);
    ctx.scale = [self scaleForBoundedIconContext:ctx];
    [self applyTransformForIconContext:ctx];
    CTLineRef line = [self lineForScaledIconContext:ctx];
    if (line != ctx.line) {
        CFRelease(ctx.line);
        ctx.line = line;
    }
    CTLineDraw(ctx.line, ctx.gfx);
    CFRelease(ctx.line);
}

- (CGPoint)scaleForBoundedIconContext:(IconContext)ctx {
    CGFloat sx = ctx.bounds.size.width / ctx.iconBounds.size.width;
    CGFloat sy = ctx.bounds.size.height / ctx.iconBounds.size.height;
    if ([self.contentsGravity isEqual:kCAGravityResizeAspectFill]) {
        sx = sy = fmaxf(sx, sy);
    } else if (![self.contentsGravity isEqual:kCAGravityResize]) {
        sx = sy = fminf(sx, sy);
    }
    return CGPointMake(sx, sy);
}

- (void)applyTransformForIconContext:(IconContext)ctx {
    CGAffineTransform t = CGAffineTransformMakeScale(ctx.scale.x, ctx.scale.y);
    CGContextSetTextMatrix(ctx.gfx, t);
    ctx.iconBounds = CGRectApplyAffineTransform(ctx.iconBounds, t); // locally scoped
    CGFloat tx = ctx.bounds.origin.x - ctx.iconBounds.origin.x;
    tx += (ctx.bounds.size.width - ctx.iconBounds.size.width) / 2; // center horizontally
    CGFloat ty = ctx.bounds.origin.y - ctx.iconBounds.origin.y;
    ty += (ctx.bounds.size.height - ctx.iconBounds.size.height) / 2; // center vertically
    CGContextSetTextPosition(ctx.gfx, tx, ty);
}

- (CTLineRef)lineForScaledIconContext:(IconContext)ctx {
    CGFloat strokeWidth = self.iconStrokeWidthRatio;
    if (strokeWidth) {
        strokeWidth *= -CTFontGetSize([self.icon.class font].textFont); // negative preserves fill
        strokeWidth *= ctx.scale.x == ctx.scale.y ? ctx.scale.x : sqrt(ctx.scale.x * ctx.scale.y); // geometric mean
        [self setIconAttribute:kCTStrokeWidthAttributeName value:(__bridge CFNumberRef) @(strokeWidth)];
        ctx.line = CTLineCreateWithAttributedString((__bridge CFAttributedStringRef) self.iconString);
    }
    return ctx.line;
}

@end
