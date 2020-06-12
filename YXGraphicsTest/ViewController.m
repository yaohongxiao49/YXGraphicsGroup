//
//  ViewController.m
//  YXGraphicsTest
//
//  Created by ios on 2020/6/12.
//  Copyright © 2020 August. All rights reserved.
//

#import "ViewController.h"
#import "YXPicChartGraphicsShowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *arr = [YXPicChartGraphicsArrModel arrayOfModelsFromDictionaries:@[@{@"title":@"测试一", @"descript":@"这是第一个测试", @"count":@(20), @"color":[UIColor colorWithRed:arc4random() %255 /255.0 green:arc4random() %255 /255.0 blue:arc4random() %255 /255.0 alpha:1.0]}, @{@"title":@"测试二", @"descript":@"这是第二个测试", @"count":@(30), @"color":[UIColor colorWithRed:arc4random() %255 /255.0 green:arc4random() %255 /255.0 blue:arc4random() %255 /255.0 alpha:1.0]}]];
    
    YXPicChartGraphicsShowView *picChartGraphicsShowView = [[YXPicChartGraphicsShowView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500) arr:(NSArray *)arr title:@"红"];
    picChartGraphicsShowView.center = self.view.center;
    [self.view addSubview:picChartGraphicsShowView];
}


@end
