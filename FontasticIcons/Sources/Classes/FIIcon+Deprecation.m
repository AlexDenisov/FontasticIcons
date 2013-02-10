//
//  FIIcon+Deprecation.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 2.2.13.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIcon+Deprecation.h"
#import "FIFont.h"

@implementation FIIcon (Deprecation)

- (NSString *)iconString {
    return self.glyph;
}

- (NSString *)iconName {
    return self.name;
}

+ (FIIcon *)iconWithName:(NSString *)anIconName fontSetName:(NSString *)aFontName {
    return [FIIcon iconWithName:anIconName fontName:aFontName];
}

+ (NSString *)fontSetName {
    return self.font.name;
}

- (NSString *)fontSetName {
    return [self.class fontSetName];
}

@end
