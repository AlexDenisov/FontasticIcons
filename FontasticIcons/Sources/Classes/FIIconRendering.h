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
@property (nonatomic, retain) UIColor *iconColor; // only copyable since iOS 6.0
@property (nonatomic, assign) CGPoint inset;

@end
