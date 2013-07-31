//
//  FIIconLayer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 29.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIconLayer.h"
#import "FIIcon.h"
#import "FIFont+Private.h"

@implementation FIIconLayer {
    NSMutableDictionary *iconAttributes;
}

#pragma mark self
- (NSAttributedString *)iconString {
    return [[NSAttributedString alloc] initWithString:self.icon.glyph ? : @"" attributes:iconAttributes];
}

- (void)setIconAttribute:(CFStringRef)name value:(CFTypeRef)value {
    CFTypeRef oldValue = (__bridge CFTypeRef) iconAttributes[(__bridge NSString *) name];
    if (value != oldValue && (!value || !oldValue || !CFEqual(value, oldValue))) {
        [iconAttributes setValue:(__bridge id) value forKey:(__bridge NSString *) name];
        [self setNeedsDisplay];
    }
}

- (void)setIcon:(FIIcon *)icon withContentsScale:(CGFloat)contentsScale {
    _icon = icon;
    [self setIconAttribute:kCTFontAttributeName value:[icon.class font].textFont];
    [self validateIconStrokeWidth];
    // necessary for retina: http://markpospesel.wordpress.com/2012/07/10/on-the-importance-of-setting-contentsscale-in-catextlayer/
    // but UIView overrides initialized value: http://stackoverflow.com/a/9479176/672921
    // and setting during rendering or overriding property are both inflexible and ineffective
    contentsScale = contentsScale ? : [UIScreen mainScreen].scale;
    if (contentsScale != self.contentsScale) {
        self.contentsScale = contentsScale;
        [self setNeedsDisplay];
    }
}

#pragma mark self <FIIconRendering>
@synthesize icon = _icon, iconColor = _iconColor, iconInset = _iconInset;
@synthesize iconStrokeColor = _iconStrokeColor, iconStrokeWidthRatio = _iconStrokeWidthRatio;
@synthesize iconShadowColor = _iconShadowColor, iconShadowOffset = _iconShadowOffset;

- (void)setIcon:(FIIcon *)icon {
    [self setIcon:icon withContentsScale:0];
}

- (void)setIconColor:(UIColor *)iconColor {
    _iconColor = iconColor;
    [self setIconAttribute:kCTForegroundColorAttributeName value:iconColor.CGColor];
}

- (void)setIconStrokeColor:(UIColor *)iconStrokeColor {
    _iconStrokeColor = iconStrokeColor;
    [self setIconAttribute:kCTStrokeColorAttributeName value:iconStrokeColor.CGColor];
}

- (void)setIconStrokeWidthRatio:(CGFloat)iconStrokeWidthRatio {
    _iconStrokeWidthRatio = iconStrokeWidthRatio;
    [self validateIconStrokeWidth];
}

- (void)setIconInset:(CGPoint)iconInset {
    if (!(CGPointEqualToPoint(iconInset, _iconInset))) {
        _iconInset = iconInset;
        [self setNeedsDisplay];
    }
}

#pragma mark super : NSObject
- (id)init {
    if (self = [super init]) {
        iconAttributes = [[NSMutableDictionary alloc] initWithCapacity:4];
        self.geometryFlipped = YES;
        self.needsDisplayOnBoundsChange = YES;
        self.contentsGravity = kCAGravityResizeAspect;
    }
    return self;
}

#pragma mark private
- (void)validateIconStrokeWidth {
    if (self.iconStrokeWidthRatio) {
        // negative stroke multiplier preserves fill by default
        CGFloat strokeWidth = self.iconStrokeWidthRatio * -CTFontGetSize([self.icon.class font].textFont);
        [self setIconAttribute:kCTStrokeWidthAttributeName value:(__bridge CFNumberRef) @(strokeWidth)];
    } else {
        [self setIconAttribute:kCTStrokeWidthAttributeName value:NULL];
    }
}

@end
