//
//  FIMetaInfoManager.h
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FIFont;

@interface FIMetaInfoManager : NSObject

+ (FIMetaInfoManager *)sharedManager;
- (void)registerFont:(FIFont *)aFont forClass:(Class)aClass;
- (FIFont *)fontForClass:(Class)aClass;
- (void)registerIconSet:(NSDictionary *)anIcons forClass:(Class)aClass;
- (NSDictionary *)iconSetForClass:(Class)aClass;

@end
