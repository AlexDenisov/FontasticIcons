//
//  FIIconView.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FIIconRendering.h"

@class FIIconLayer;

@interface FIIconView : UIView <FIIconRendering>

@property(nonatomic, strong, readonly) FIIconLayer *iconLayer;
@property (nonatomic, assign) CGFloat padding;

@end
