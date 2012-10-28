//
//  FIIconView.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FIIcon;
@class FIFont;

@interface FIIconView : UIView

@property (nonatomic, readwrite) CGFloat padding;
@property (nonatomic, strong) UIColor *iconColor;
@property (nonatomic, strong) FIIcon *icon;
@property (nonatomic, strong) FIFont *font;

@end
