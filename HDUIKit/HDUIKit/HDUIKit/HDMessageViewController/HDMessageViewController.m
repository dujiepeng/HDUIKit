//
//  HDMessageViewController.m
//  HDUIKit
//
//  Created by 杜洁鹏 on 2018/5/24.
//  Copyright © 2018年 杜洁鹏. All rights reserved.
//

#import "HDMessageViewController.h"
#import "HDToolBar.h"

#define kToolBarHeight 55
#define kWidth self.view.bounds.size.width
#define kHeight self.view.bounds.size.height

@interface HDMessageViewController ()
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *datasource;
@property (nonatomic, strong) HDToolBar *toolBar;
@end

@implementation HDMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.toolBar];
}

#pragma mark - getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.frame = CGRectMake(0, 0, kWidth, kHeight - kToolBarHeight);
        [_tableView setBackgroundColor:UIColor.redColor];
    }
    return _tableView;
}

- (NSMutableArray *)datasource {
    if (!_datasource) {
        _datasource = [NSMutableArray array];
    }
    
    return _datasource;
}

- (HDToolBar *)toolBar {
    if (!_toolBar) {
        _toolBar = [[HDToolBar alloc] initWithFrame:CGRectZero];
        _toolBar.frame = CGRectMake(0, kHeight - kToolBarHeight, kWidth, kToolBarHeight);
        [_toolBar setBackgroundColor:UIColor.blueColor];
    }
    
    return _toolBar;
}
@end
