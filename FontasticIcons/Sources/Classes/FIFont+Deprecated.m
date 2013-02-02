//
//  FIFont+Deprecated.m
//  FontasticIcons
//
//  Created by Jonathan Toland on 4.2.13.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIFont+Deprecated.h"

@implementation FIFont (Deprecated)

- (NSString *)glyphAliasMapPath {
    NSString *path = self.glyphMapPath;
    return [NSString stringWithFormat:@"%@+Deprecated.%@", path.stringByDeletingPathExtension, path.pathExtension];
}

@end
