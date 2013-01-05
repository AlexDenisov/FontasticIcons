//
//  FIIconLayer.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 29.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIUtils.h"

#import "FIIconLayer.h"
#import "FIIcon_Private.h"
#import "FIFont_Private.h"

@implementation FIIconLayer {
    NSMutableDictionary *iconAttributes;
}

#pragma mark self
- (NSAttributedString *)iconString {
    return arcsafe_autorelease([[NSAttributedString alloc] initWithString:self.icon.iconString ? : @""
                                                               attributes:iconAttributes]);
}

- (void)setIconAttribute:(CFStringRef)name value:(CFTypeRef)value {
    if (value) {
        iconAttributes[arcsafe_toll_free_bridge(NSString *, name)] = arcsafe_toll_free_bridge(id, value);
    } else {
        [iconAttributes removeObjectForKey:arcsafe_toll_free_bridge(NSString *, name)];
    }
    [self setNeedsDisplay];
}

- (void)setIcon:(FIIcon *)icon withContentsScale:(CGFloat)contentsScale {
    CFTypeRef font = (CFTypeRef) [[icon.class metaFont] fontRef];
    if (font != [[_icon.class metaFont] fontRef] || ![icon.iconString isEqualToString:_icon.iconString]) {
        _icon = icon.copy;
        [self setIconAttribute:kCTFontAttributeName value:font];
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
        _iconColor = arcsafe_retain(iconColor);
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

- (void)dealloc {
    arcsafe_release(_icon);
    arcsafe_release(_iconColor);
    arcsafe_release(iconAttributes);
    arcsafe_super_dealloc();
}

@end
