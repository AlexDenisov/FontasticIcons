//
//  FIIconRendering.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 30.12.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

@class FIIcon;

@protocol FIIconRendering

@property (nonatomic, copy) FIIcon *icon;
@property (nonatomic, strong) UIColor *iconColor; // TODO: migrate to copy for iOS 6.0
@property (nonatomic, strong) UIColor *iconStrokeColor; // TODO: migrate to copy for iOS 6.0
@property (nonatomic, assign) CGFloat iconStrokeWidthRatio;
@property (nonatomic, assign) CGPoint iconInset;
@property (nonatomic, copy) UIColor *iconShadowColor;
@property (nonatomic, assign) CGSize iconShadowOffset;

@end
