//
//  YXGraphicsVC.m
//  YXGraphicsTest
//
//  Created by ios on 2020/8/19.
//  Copyright © 2020 August. All rights reserved.
//

#import "YXGraphicsVC.h"
#import "YXPicChartGraphicsShowView.h"
#import "YXPieChartLineGraphicsView.h"

@interface YXGraphicsVC ()

@end

@implementation YXGraphicsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
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
    
    NSMutableArray *arr = [YXPieChartLineGraphicsArrModel arrayOfModelsFromDictionaries:@[
                           @{kPieChartLineGraphicsName:@"1", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"2", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"3", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"4", kPieChartLineGraphicsValue:@(22)},
                           @{kPieChartLineGraphicsName:@"5", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"6", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"7", kPieChartLineGraphicsValue:@(15)},
                           @{kPieChartLineGraphicsName:@"8", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"9", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"0", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"10", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"11", kPieChartLineGraphicsValue:@(30)},
                           @{kPieChartLineGraphicsName:@"12", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"13", kPieChartLineGraphicsValue:@(77)},
                           @{kPieChartLineGraphicsName:@"14", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"15", kPieChartLineGraphicsValue:@(64)},
                           @{kPieChartLineGraphicsName:@"16", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"17", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"18", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"19", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"20", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"21", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"22", kPieChartLineGraphicsValue:@(10)},
                           @{kPieChartLineGraphicsName:@"23", kPieChartLineGraphicsValue:@(10)},]];
    
    YXPieChartLineGraphicsView *view = [[YXPieChartLineGraphicsView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500)];
    view.dataSourceArr = arr;
    view.title = @"红";
    [view draw];
    [self.view addSubview:view];
}

@end
