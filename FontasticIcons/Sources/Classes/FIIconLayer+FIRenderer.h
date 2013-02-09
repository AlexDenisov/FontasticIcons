//
//  FIIconLayer(FIRenderer)
//  FontasticIcons
//
//  Created by Jonathan Toland on 1.1.13.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIconLayer.h"
#import "FIRenderer.h"

typedef id <FIRenderer, FIIconRendering> FIIconRenderer;

@interface FIIconLayer (FIRenderer) <FIRenderer>
@end
