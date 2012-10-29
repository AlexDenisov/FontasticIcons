//
//  FIViewController.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIViewController.h"
#import "FIIconView.h"

#import "FIEntypoIcon.h"
#import "FIEntypoSocialIcon.h"

@interface FIViewController ()

@end

const static NSUInteger kColumnsCount = 3;

@implementation FIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", self.view);
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    NSUInteger currentRow = 0;
    NSUInteger currentColumn = 0;
    CGFloat size = self.view.bounds.size.width/kColumnsCount;
    
    for (NSString *iconName in [FIEntypoIcon iconNames]) {
        if (currentColumn && currentColumn % kColumnsCount == 0) {
            currentColumn = 0;
            currentRow++;
        }
        FIIconView *iconView = [[FIIconView alloc] initWithFrame:
                                CGRectMake(currentColumn * size,
                                           currentRow * size,
                                           size,
                                           size)];
        iconView.backgroundColor = [UIColor clearColor];
        iconView.icon = [FIEntypoIcon iconWithName:iconName];
        iconView.padding = 2;
        [scrollView addSubview:iconView];
        currentColumn++;
    }
    
    for (NSString *iconName in [FIEntypoSocialIcon iconNames]) {
        if (currentColumn % kColumnsCount == 0) {
            currentColumn = 0;
            currentRow++;
        }
        FIIconView *iconView = [[FIIconView alloc] initWithFrame:
                                CGRectMake(currentColumn * size,
                                           currentRow * size,
                                           size,
                                           size)];
        iconView.backgroundColor = [UIColor clearColor];
        iconView.icon = [FIEntypoSocialIcon iconWithName:iconName];
        iconView.padding = 2;
        [scrollView addSubview:iconView];
        currentColumn++;
    }
    
    CGSize contentSize = CGSizeMake(kColumnsCount * size,
                                    (currentRow + 1) * size);
    [scrollView setContentSize:contentSize];
    
}

@end
