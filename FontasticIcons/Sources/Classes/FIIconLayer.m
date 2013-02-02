//
//  FIIconLayer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 29.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
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
    [iconAttributes setValue:(__bridge id) value forKey:(__bridge NSString *) name];
    [self setNeedsDisplay];
}

- (void)setIcon:(FIIcon *)icon withContentsScale:(CGFloat)contentsScale {
    if (![icon isEqual:_icon]) {
        _icon = icon;
        [self setIconAttribute:kCTFontAttributeName value:[icon.class font].textFont];
        // necessary for retina: http://markpospesel.wordpress.com/2012/07/10/on-the-importance-of-setting-contentsscale-in-catextlayer/
        // but UIView overrides initialized value: http://stackoverflow.com/a/9479176/672921
        // and setting during rendering or overriding property are both inflexible and ineffective
        self.contentsScale = contentsScale ? : [UIScreen mainScreen].scale;
    }
}

#pragma mark self <FIIconRendering>
@synthesize icon = _icon, iconColor = _iconColor, inset = _inset;

- (void)setIcon:(FIIcon *)icon {
    [self setIcon:icon withContentsScale:0];
}

- (void)setIconColor:(UIColor *)iconColor {
    if (![iconColor isEqual:_iconColor]) {
        _iconColor = iconColor;
        [self setIconAttribute:kCTForegroundColorAttributeName value:iconColor.CGColor];
    }
}

- (void)setInset:(CGPoint)inset {
    if (!(CGPointEqualToPoint(inset, _inset))) {
        _inset = inset;
        [self setNeedsDisplay];
    }
}

#pragma mark super : NSObject
- (id)init {
    if (self = [super init]) {
        iconAttributes = [[NSMutableDictionary alloc] initWithCapacity:2];
        self.geometryFlipped = YES;
        self.needsDisplayOnBoundsChange = YES;
        self.contentsGravity = kCAGravityResizeAspect;
    }
    return self;
}

@end
