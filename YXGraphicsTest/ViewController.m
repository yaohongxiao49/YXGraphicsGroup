//
//  ViewController.m
//  YXGraphicsTest
//
//  Created by ios on 2020/6/12.
//  Copyright © 2020 August. All rights reserved.
//

#import "ViewController.h"
#import "YXPicChartGraphicsShowView.h"
#import "YXPieChartLineGraphicsView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //第一种图形方法
    [self methodFirst];
    
    //第二种图形方法
    [self methodSecond];
}

#pragma mark - 第一种图形方法
- (void)methodFirst {
    
    NSMutableArray *arr = [YXPicChartGraphicsArrModel arrayOfModelsFromDictionaries:@[@{kGraphicsTitle:@"测试一", kGraphicsDescript:@"这是第一个测试", kGraphicsCount:@(20), kGraphicsColor:[UIColor colorWithRed:arc4random() %255 /255.0 green:arc4random() %255 /255.0 blue:arc4random() %255 /255.0 alpha:1.0]}, @{kGraphicsTitle:@"测试二", kGraphicsDescript:@"这是第二个测试", kGraphicsCount:@(30), kGraphicsColor:[UIColor colorWithRed:arc4random() %255 /255.0 green:arc4random() %255 /255.0 blue:arc4random() %255 /255.0 alpha:1.0]}]];
    
    YXPicChartGraphicsShowView *picChartGraphicsShowView = [[YXPicChartGraphicsShowView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500) arr:nil title:@"红"];
    picChartGraphicsShowView.center = self.view.center;
    [self.view addSubview:picChartGraphicsShowView];
    
    picChartGraphicsShowView.pieChartGraphicsArr = (NSArray *)arr;
}

#pragma mark - 第二种图形方法
- (void)methodSecond {
    
    NSMutableArray *arr = [YXPieChartLineGraphicsArrModel arrayOfModelsFromDictionaries:@[@{kPieChartLineGraphicsName:@"1", kPieChartLineGraphicsValue:@(10)}, @{kPieChartLineGraphicsName:@"2", kPieChartLineGraphicsValue:@(10)}, @{kPieChartLineGraphicsName:@"3", kPieChartLineGraphicsValue:@(10)}, @{kPieChartLineGraphicsName:@"4", kPieChartLineGraphicsValue:@(10)}]];
    
    YXPieChartLineGraphicsView *view = [[YXPieChartLineGraphicsView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500)];
    view.dataSourceArr = arr;
    view.title = @"红";
    [view draw];
    [self.view addSubview:view];
}

@end
