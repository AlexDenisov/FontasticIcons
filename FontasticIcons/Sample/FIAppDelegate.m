//
//  FIAppDelegate.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIAppDelegate.h"

#import "FIViewController.h"
#import "FIFontListViewController.h"

@implementation FIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.viewController = [[FIFontListViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController:self.viewController];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
