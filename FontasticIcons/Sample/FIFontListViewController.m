//
//  FIFontListViewController.m
//  FontasticIcons
//
//  Created by Alex Denisov on 17.11.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIFontListViewController.h"
#import "FIViewController.h"

#import "FontasticIcons.h"

@implementation FIFontListViewController
{
    UITableView *_fontListTableView;
    NSArray *_icons;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _icons = [FIIcon bundledFonts];
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:kCellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    Class iconKit = _icons[indexPath.row];
    cell.textLabel.text = [iconKit fontSetName];
    FIIcon *icon = [iconKit performSelector:@selector(starIcon)];
    // TODO: real unit/behavior testing (#15)
    NSAssert(icon.iconString == ((FIIcon *) [iconKit iconWithName:@"star"]).iconString,
            @"Icon lookup by selector should match lookup by class");
    NSAssert(icon.iconString == [FIIcon iconWithName:@"star" fontSetName:cell.textLabel.text].iconString,
            @"Icon lookup by selector should match lookup by font name");
    cell.imageView.image = [icon imageWithBounds:CGRectMake(0, 0, 32, 32) color:[UIColor orangeColor]];
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
}

@end
