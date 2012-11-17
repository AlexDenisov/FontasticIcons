//
//  FIIcon.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FIIcon : NSObject

@property (nonatomic, copy) NSString *iconString;
@property (nonatomic, copy) NSString *iconName;

+ (FIIcon *)iconWithName:(NSString *)anIconName;
+ (NSArray *)iconNames;

+ (NSString *)fontKitName;
- (NSString *)fontKitName;

@end
