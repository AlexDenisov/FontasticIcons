//
//  FIIconLayer.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 29.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "FIIconRendering.h"

@interface FIIconLayer : CALayer <FIIconRendering>

@property(nonatomic, copy, readonly) NSAttributedString *iconString;

-(void)setIconAttribute:(CFStringRef)name value:(CFTypeRef)value;
-(void)setIcon:(FIIcon *)icon withContentsScale:(CGFloat)contentsScale;

@end
