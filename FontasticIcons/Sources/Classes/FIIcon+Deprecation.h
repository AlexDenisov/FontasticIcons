//
//  FIIcon+Deprecation.h
//  FontasticIcons
//
//  Created by Jonathan Toland on 2.2.13.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIIcon.h"

@interface FIIcon (Deprecation)

/*! @deprecated in 0.3.0. Use glyph instead. */@property (nonatomic, copy, readonly) NSString *iconString;
/*! @deprecated in 0.3.0. Use name instead. */@property (nonatomic, copy, readonly) NSString *iconName;

/*! @deprecated in 0.3.0. Use iconWithName:fontName: instead. */+ (FIIcon *)iconWithName:(NSString *)anIconName fontSetName:(NSString *)aFontName;
/*! @deprecated in 0.3.0. Use font.name instead. */+ (NSString *)fontSetName;
/*! @deprecated in 0.3.0. Use class.font.name instead. */- (NSString *)fontSetName;

@end
