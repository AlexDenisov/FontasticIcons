//
//  FIFont+Private.h
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "FIFont.h"

@interface FIFont ()

@property (nonatomic, copy, readonly) NSString *objcName;
@property (nonatomic, copy, readonly) NSString *glyphsPath;
@property (nonatomic, copy, readonly) NSDictionary *glyphMap;
@property (nonatomic, assign, readonly) CTFontRef textFont;

- (id)initWithFontData:(NSData *)aData;

@end

@protocol FIFontGlyphAliases

@property (nonatomic, copy, readonly) NSString *aliasesPath;

@end
