//
//  FIFont.h
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

@interface FIFont : NSObject

@property (nonatomic, copy, readonly) NSString *name;

+ (instancetype)fontWithResourcePath:(NSString *)aResource;

@end
