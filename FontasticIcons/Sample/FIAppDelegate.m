//
//  FIAppDelegate.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIAppDelegate.h"
#import "FIViewController.h"

#import "FIEntypoIcon.h"
#import "FIEntypoSocialIcon.h"
#import "FIIconicIcon.h"
#import "FIFontAwesomeIcon.h"

@implementation FIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    FIViewController *entypoViewController = [FIViewController new];
    entypoViewController.iconClass = [FIEntypoIcon class];
    
    FIViewController *entypoSocialViewController = [FIViewController new];
    entypoSocialViewController.iconClass = [FIEntypoSocialIcon class];
    
    FIViewController *iconicViewController = [FIViewController new];
    iconicViewController.iconClass = [FIIconicIcon class];
    
    FIViewController *fontAwesomeViewController = [FIViewController new];
    fontAwesomeViewController.iconClass = [FIFontAwesomeIcon class];

    UITabBarController *tabbarController = [UITabBarController new];
    
    NSArray *viewControllers =
    @[
      [[UINavigationController alloc] initWithRootViewController:entypoViewController],
      [[UINavigationController alloc] initWithRootViewController:entypoSocialViewController],
      [[UINavigationController alloc] initWithRootViewController:iconicViewController],
      [[UINavigationController alloc] initWithRootViewController:fontAwesomeViewController]
      ];
    
    tabbarController.viewControllers = viewControllers;
    
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
