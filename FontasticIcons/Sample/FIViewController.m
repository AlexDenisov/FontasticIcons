//
//  FIViewController.m
//  FontasticIcons
//
//  Created by Alex Denisov on 28.10.12.
//  Copyright (c) 2013 Alex Denisov. All rights reserved.
//

#import "FIViewController.h"

#import "FontasticIcons.h"

#import "FIIcon.h"
#import "FIIcon+FIIconRenderer.h"

@interface FIViewController ()

@end

const static NSUInteger kColumnsCount = 3;

@implementation FIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];    
    NSUInteger currentRow = 0;
    NSUInteger currentColumn = 0;
    CGFloat size = self.view.bounds.size.width/kColumnsCount;
    
    for (NSString *iconName in [self.iconClass iconNames]) {
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
        iconView.icon = [self.iconClass iconWithName:iconName];
        iconView.padding = 5;
        iconView.iconColor = [self randomColor];
        iconView.iconStrokeColor = [self randomColor];
        iconView.iconStrokeWidthRatio = 0.05;
        UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]
                                              initWithTarget:self
                                              action:@selector(iconSelected:)];
        recognizer.numberOfTapsRequired = 1;
        [iconView addGestureRecognizer:recognizer];
        [scrollView addSubview:iconView];
        currentColumn++;
    }
    
    CGSize contentSize = CGSizeMake(kColumnsCount * size,
                                    (currentRow + 2) * size);
    [scrollView setContentSize:contentSize];
    
    [self renderNavigationItems];
}

- (void)renderNavigationItems {
    FIIcon *leftIcon = [self randomIcon];
    UIImage *leftImage = [leftIcon imageWithBounds:CGRectMake(0, 0, 26, 26) color:[UIColor whiteColor]];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithImage:leftImage
                                             style:UIBarButtonItemStyleBordered
                                             target:nil
                                             action:nil];
    
    FIIcon *rightIcon = [self randomIcon];
    UIImage *rightImage = [rightIcon imageWithBounds:CGRectMake(0, 0, 26, 26) color:[UIColor whiteColor]];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithImage:rightImage
                                             style:UIBarButtonItemStyleBordered
                                             target:nil
                                             action:nil];
}

- (void)iconSelected:(UITapGestureRecognizer *)sender {
    FIIconView *view = (FIIconView *)sender.view;
    [self.navigationItem setTitle:view.icon.name];
}

- (void)setIconClass:(Class)iconClass {
    _iconClass = iconClass;

    FIIcon *icon = [self randomIcon];
    
    UIImage *image = [icon imageWithBounds:CGRectMake(0, 0, 30, 30) color:[UIColor blackColor]];
    
    [self.tabBarItem setImage:image];    
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

- (FIIcon *)randomIcon {
    NSArray *icons = [_iconClass iconNames];
    NSInteger iconIndex = arc4random() % icons.count;
    NSString *iconName = [icons objectAtIndex:iconIndex];
    return [_iconClass iconWithName:iconName];
}

@end
