//
//  FIViewController.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIViewController.h"
#import "FIEntypoIcon.h"
#import "FIIconView.h"

@interface FIViewController ()

@end

@implementation FIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    FIIconView *iconView = [[FIIconView alloc] initWithFrame:
                            CGRectMake(50, 50, 170, 170)];
    iconView.backgroundColor = [UIColor clearColor];
    iconView.icon = [FIEntypoIcon clockIcon];
    [self.view addSubview:iconView];
}

@end
