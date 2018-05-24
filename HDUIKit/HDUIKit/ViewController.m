//
//  ViewController.m
//  HDUIKit
//
//  Created by 杜洁鹏 on 2018/5/24.
//  Copyright © 2018年 杜洁鹏. All rights reserved.
//

#import "ViewController.h"
#import "HDMessageViewController.h"
#import "HDNavigationController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clicked:(id)sender {
    HDMessageViewController *mVC = [[HDMessageViewController alloc] init];
    HDNavigationController *nav = [[HDNavigationController alloc] initWithRootViewController:mVC];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
