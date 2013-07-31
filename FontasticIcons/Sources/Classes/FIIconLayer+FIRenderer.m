//
//  FIIconLayer+FIRenderer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 1.1.13.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIIconLayer+FIRenderer.h"

@interface FIIconContext : NSObject

- (id)initWithDelegate:(FIIconLayer *)aDelegate inDrawingContext:(CGContextRef)aCtx;
- (void)draw;

@end

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
    [[[FIIconContext alloc] initWithDelegate:self inDrawingContext:ctx] draw];
    [super drawInContext:ctx];
}

- (void)renderInContext:(CGContextRef)ctx {
    if (self.geometryFlipped) {
        CGContextConcatCTM(ctx, CGAffineTransformMake(1, 0, 0, -1, 0, CGContextGetClipBoundingBox(ctx).size.height));
    }
    [super renderInContext:ctx];
}

@end

@implementation FIIconContext {
    __unsafe_unretained FIIconLayer *delegate; // TODO: migrate to __weak for iOS 5
    CGContextRef ctx;
    CGRect bounds;
    CGRect _iconBounds;
    CGPoint _scale;
    CTLineRef _line;
}

#pragma mark self
- (id)initWithDelegate:(FIIconLayer *)aDelegate inDrawingContext:(CGContextRef)aCtx {
    if (self = [super init]) {
        delegate = aDelegate;
        ctx = aCtx;
        bounds = CGRectInset(CGContextGetClipBoundingBox(aCtx), aDelegate.iconInset.x, aDelegate.iconInset.y);
    }
    return self;
}

- (void)draw {
    CGAffineTransform t = CGAffineTransformMakeScale(self.scale.x, self.scale.y);
    CGContextConcatCTM(ctx, t); // CGContextSetTextMatrix() convolutes stroke width
    CGRect scaledBounds = CGRectApplyAffineTransform(bounds, CGAffineTransformInvert(t));
    scaledBounds.origin.x += (scaledBounds.size.width - self.iconBounds.size.width) / 2 - self.iconBounds.origin.x;
    scaledBounds.origin.y += (scaledBounds.size.height - self.iconBounds.size.height) / 2 - self.iconBounds.origin.y;
    CGContextSetTextPosition(ctx, scaledBounds.origin.x, scaledBounds.origin.y);
    CGContextSetShadowWithColor(ctx, delegate.iconShadowOffset, 0, delegate.iconShadowColor.CGColor);
    CTLineDraw(self.line, ctx);
}

#pragma mark super
- (void)dealloc {
    [self invalidateLine];
}

#pragma mark private
- (CGRect)iconBounds {
    _iconBounds = CGRectIsEmpty(_iconBounds) ? CTLineGetImageBounds(self.line, ctx) : _iconBounds;
    return _iconBounds;
}

- (CGPoint)scale {
    if (CGPointEqualToPoint(_scale, CGPointZero)) {
        _scale = CGPointMake(bounds.size.width / self.iconBounds.size.width,
                             bounds.size.height / self.iconBounds.size.height);
        if ([delegate.contentsGravity isEqualToString:kCAGravityResizeAspectFill]) {
            _scale.x = _scale.y = fmaxf(_scale.x, _scale.y);
        } else if (![delegate.contentsGravity isEqualToString:kCAGravityResize]) {
            _scale.x = _scale.y = fminf(_scale.x, _scale.y);
        }
    }
    return _scale;
}

- (CTLineRef)line {
    _line = _line ? : CTLineCreateWithAttributedString((__bridge CFAttributedStringRef) delegate.iconString);
    return _line;
}

- (void)invalidateLine {
    if (_line) {
        CFRelease(_line);
        _line = NULL; // depends on delegate.iconString
        _iconBounds = CGRectZero; // depends on line
        _scale = CGPointZero; // depends on iconBounds
    }
}

@end
