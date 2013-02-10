//
//  FIFont+Deprecation.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 4.2.13.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIFont+Deprecation.h"

@implementation FIFont (Deprecation)

- (NSString *)aliasesPath {
    NSString *path = self.glyphsPath;
    return [NSString stringWithFormat:@"%@+Deprecation.%@", path.stringByDeletingPathExtension, path.pathExtension];
}

@end
