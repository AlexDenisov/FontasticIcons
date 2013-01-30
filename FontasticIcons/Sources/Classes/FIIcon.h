//
//  FIIcon.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

@interface FIIcon : NSObject <NSCopying>

@property (nonatomic, copy, readonly) NSString *iconString;
@property (nonatomic, copy, readonly) NSString *iconName;

+ (FIIcon *)iconWithName:(NSString *)anIconName fontSetName:(NSString *)aFontName;
+ (instancetype)iconWithName:(NSString *)anIconName;
- (id)initWithName:(NSString *)anIconName;
+ (NSArray *)iconNames;

+ (NSString *)fontSetName;
- (NSString *)fontSetName;

@end
