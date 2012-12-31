//
//  FIIconLayer.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 29.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "FIRenderer.h"
#import "FIIconRendering.h"

typedef id <FIRenderer, FIIconRendering> FIIconRenderer;

@interface FIIconLayer : CALayer <FIRenderer, FIIconRendering>

@end
