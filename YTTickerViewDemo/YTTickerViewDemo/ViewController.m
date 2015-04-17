//
//  ViewController.m
//  YTTickerViewDemo
//
//  Created by YuuTanimura
//  Copyright (c) 2015年 YuuTanimura. All rights reserved.
//

#import "ViewController.h"
#import "YTTickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YTTickerView* tickerView = [[YTTickerView alloc] initWithFrame:CGRectMake(0, 40, UIScreen.mainScreen.bounds.size.width, 0) message:@"This is a sample of YTTickerView!!"];
    [tickerView setMessageColor:[UIColor cyanColor]];
    [tickerView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:tickerView];
    [tickerView start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
