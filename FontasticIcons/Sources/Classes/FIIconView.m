//
//  FIIconView.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIUtils.h"

#import "FIIconView.h"
#import "FIIcon.h"
#import "FIIcon_Private.h"
#import "FIFont.h"
#import "FIFont_Private.h"

@implementation FIIconView

- (void)dealloc {
    self.icon = nil;
    self.iconColor = nil;
    fi_arc_dealloc;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CTFontRef font = [[[self.icon class] iconFont] fontRef];
    if (self.iconColor == nil) {
        self.iconColor = [UIColor blackColor];
    }
    CGColorRef color = self.iconColor.CGColor;
    NSString *iconString = self.icon.iconString;
    NSDictionary *attributesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                    (id)font, (NSString *)kCTFontAttributeName,
                                    color, (NSString *)kCTForegroundColorAttributeName,
                                    nil];
    
    NSAttributedString *attrString = [[NSMutableAttributedString alloc]
                                       initWithString:iconString
                                       attributes:attributesDict];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CFAttributedStringSetAttribute((CFMutableAttributedStringRef)attrString,
                                   CFRangeMake(0, iconString.length),
                                   kCTForegroundColorAttributeName,
                                   color);
    CTLineRef line = CTLineCreateWithAttributedString((CFAttributedStringRef) attrString);
    CGRect imageBounds = CTLineGetImageBounds(line, context);
    CGFloat width = imageBounds.size.width;
    CGFloat height = imageBounds.size.height;
    
    CGFloat padding = self.padding;
    
    width += padding;
    height += padding;
    
    float sx = self.bounds.size.width / width;
    float sy = self.bounds.size.height / height;
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    
    CGContextTranslateCTM(context, 1, self.bounds.size.height);
    CGContextScaleCTM(context, 1, -1);
    CGContextScaleCTM(context, sx, sy);
    
    CGContextSetTextPosition(context, -imageBounds.origin.x + padding/2, -imageBounds.origin.y + padding/2);
    
    CTLineDraw(line, context);
    CFRelease(line);
    
    fi_arc_release(attrString);
}

@end
