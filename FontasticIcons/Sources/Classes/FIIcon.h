//
//  FIIcon.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

@class FIFont;

@interface FIIcon : NSObject <NSCopying>

@property (nonatomic, copy, readonly) NSString *glyph;
@property (nonatomic, copy, readonly) NSString *name;

+ (FIIcon *)iconWithName:(NSString *)anIconName fontName:(NSString *)aFontName;
+ (instancetype)iconWithName:(NSString *)anIconName;
- (id)initWithName:(NSString *)anIconName;
+ (NSArray *)iconNames; // TODO: migrate to NSOrderedSet for iOS 5.0

@end

@interface FIIcon (Abstract)

+ (FIFont *)font;

@end
