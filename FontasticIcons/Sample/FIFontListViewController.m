//
//  FIFontListViewController.m
//  FontasticIcons
//
//  Created by Alex Denisov on 17.11.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIFontListViewController.h"
#import "FIIcon.h"
#import "FIEntypoIcon.h"
#import "FIEntypoSocialIcon.h"
#import "FIViewController.h"

@implementation FIFontListViewController
{
    UITableView *_fontListTableView;
    NSArray *_icons;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _icons = [[NSArray alloc] initWithArray:@[[FIEntypoIcon class]]];
    _fontListTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _fontListTableView.delegate = self;
    _fontListTableView.dataSource = self;
    [self.view addSubview:_fontListTableView];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return _icons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *kCellIdentifier = @"cell";
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:kCellIdentifier] autorelease];
    }
    Class iconKit = _icons[indexPath.row];
    cell.textLabel.text = [iconKit performSelector:@selector(fontKitName)];
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class iconKit = _icons[indexPath.row];
    FIViewController *controller = [FIViewController new];
    controller.iconClass = iconKit;
    [self.navigationController pushViewController:controller
                                         animated:YES];
    [controller release];
}

@end
