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

@implementation FIIconLayer

#pragma mark self <FIRenderer>
- (UIImage *)image {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
    [self renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

#pragma mark self <FIIconRendering>
@synthesize inset = _inset, iconColor=_iconColor, icon= _icon;

- (void)setInset:(CGPoint)inset {
    if (!(CGPointEqualToPoint(inset, _inset))) {
        _inset = inset;
        [self setNeedsDisplay];
    }
}

- (void)setIconColor:(UIColor *)iconColor {
    if (![iconColor isEqual:_iconColor]) {
        _iconColor = iconColor.copy;
        [self setNeedsDisplay];
    }
}

- (void)setIcon:(FIIcon *)icon {
    if (![icon.iconString isEqualToString:_icon.iconString] || ![icon.fontSetName isEqualToString:_icon.fontSetName]) {
        _icon = icon.copy;
        [self setNeedsDisplay];
    }
}

#pragma mark super
- (void)drawInContext:(CGContextRef)ctx {
    UIGraphicsPushContext(ctx);
    const CGFloat kFontOversize = 1000;
    CGRect bounds = CGContextGetClipBoundingBox(ctx);
    bounds = CGRectMake(bounds.origin.x + self.inset.x, bounds.origin.y + self.inset.y,
            bounds.size.width - self.inset.x * 2, bounds.size.height - self.inset.y * 2);
    //region calculate scale of oversize glyph to aspect fit bounds
    UIFont *font = [UIFont fontWithName:[[self.icon.class metaFont] UIFontName] size:kFontOversize];
    CGSize oversize = [self.icon.iconString sizeWithFont:font];
    float scale = fminf(bounds.size.width / oversize.width, bounds.size.height / oversize.height);
    //endregion
    //region scale font size and center drawing rectangle
    font = [font fontWithSize:kFontOversize * scale];
    CGRect rect = CGRectMake(bounds.origin.x, bounds.origin.y, oversize.width * scale, oversize.height * scale);
    rect = CGRectOffset(rect, (bounds.size.width - rect.size.width) / 2, (bounds.size.height - rect.size.height) / 2);
    //endregion
    [self.iconColor set];
    [self.icon.iconString drawInRect:rect withFont:font];
    UIGraphicsPopContext();
}

#pragma mark super : NSObject
- (id)init {
    self = [super init];
    if (self) {
        self.needsDisplayOnBoundsChange = YES;
    }
    return self;
}

- (void)dealloc {
    self.icon = nil;
    self.iconColor = nil;
    arcsafe_super_dealloc();
}

@end
