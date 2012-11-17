//
//  FIAppDelegate.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIAppDelegate.h"

#import "FIViewController.h"
#import "FIFontListViewController.h"

@implementation FIAppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];

    self.viewController = [[FIFontListViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController:self.viewController];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
