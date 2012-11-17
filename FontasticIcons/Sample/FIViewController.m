//
//  FIViewController.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIViewController.h"

#import "FontasticIcons.h"

@interface FIViewController ()

@end

const static NSUInteger kColumnsCount = 3;

@implementation FIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollView = [[[UIScrollView alloc] initWithFrame:self.view.frame] autorelease];
    [self.view addSubview:scrollView];    
    NSUInteger currentRow = 0;
    NSUInteger currentColumn = 0;
    CGFloat size = self.view.bounds.size.width/kColumnsCount;
    
    for (NSString *iconName in [self.iconClass iconNames]) {
        if (currentColumn && currentColumn % kColumnsCount == 0) {
            currentColumn = 0;
            currentRow++;
        }
        FIIconView *iconView = [[[FIIconView alloc] initWithFrame:
                                CGRectMake(currentColumn * size,
                                           currentRow * size,
                                           size,
                                           size)] autorelease];
        iconView.backgroundColor = [UIColor clearColor];
        iconView.icon = [self.iconClass iconWithName:iconName];
        iconView.padding = 2;
        iconView.iconColor = [self randomColor];
        [scrollView addSubview:iconView];
        currentColumn++;
    }
    
    CGSize contentSize = CGSizeMake(kColumnsCount * size,
                                    (currentRow + 2) * size);
    [scrollView setContentSize:contentSize];
}

- (UIColor *)randomColor {
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    return [UIColor colorWithRed:r/255.f
                           green:g/255.f
                            blue:b/255.f
                           alpha:1];
}

@end
