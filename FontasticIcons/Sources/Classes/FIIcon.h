//
//  FIIcon.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FIIcon : NSObject <NSCopying>

@property (nonatomic, copy) NSString *iconString;
@property (nonatomic, copy) NSString *iconName;

+ (FIIcon *)iconWithName:(NSString *)anIconName fontSetName:(NSString *)aFontName;
+ (FIIcon *)iconWithName:(NSString *)anIconName;
- (id)initWithName:(NSString *)anIconName;
+ (NSArray *)iconNames;

+ (NSString *)fontSetName;
- (NSString *)fontSetName;

@end
