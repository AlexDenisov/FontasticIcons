//
//  FIIconRendering
//  FontasticIcons
//
//  Created by Jonathan Toland on 30.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

@class FIIcon;

@protocol FIIconRendering

@property (nonatomic, copy) FIIcon *icon;
@property (nonatomic, copy) UIColor *iconColor;
@property (nonatomic, assign) CGPoint inset;

@end
