//
//  ViewController.m
//  YCMapSpreadView
//
//  Created by tm on 16/8/16.
//  Copyright © 2016年 tm. All rights reserved.
//

#import "ViewController.h"
#import "YCMapSpreadView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YCMapSpreadView *mapView = [[YCMapSpreadView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:mapView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
