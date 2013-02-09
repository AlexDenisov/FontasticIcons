//
//  FIIconRendering.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 30.12.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

@class FIIcon;

@protocol FIIconRendering

@property (nonatomic, copy) FIIcon *icon;
@property (nonatomic, strong) UIColor *iconColor; // TODO: migrate to copy for iOS 6.0
@property (nonatomic, assign) CGPoint iconInset;

@end
