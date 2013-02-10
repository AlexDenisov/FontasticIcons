//
//  FIIconLayer+FIRenderer.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 1.1.13.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIconLayer.h"
#import "FIRenderer.h"

typedef id <FIRenderer, FIIconRendering> FIIconRendererRef;

@interface FIIconLayer (FIRenderer) <FIRenderer>
@end
