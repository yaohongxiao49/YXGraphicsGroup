//
//  ViewController.m
//  YXGraphicsTest
//
//  Created by ios on 2020/6/12.
//  Copyright © 2020 August. All rights reserved.
//

#import "ViewController.h"
#import "YXGraphicsVC.h"
#import "YXGraphicTransformationVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIButton *graphicsBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    graphicsBtn.frame = CGRectMake(40, 200, 100, 40);
    graphicsBtn.backgroundColor = [UIColor greenColor];
    [graphicsBtn setTitle:@"图形化" forState:UIControlStateNormal];
    [graphicsBtn addTarget:self action:@selector(progressGraphicsBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:graphicsBtn];
    
    UIButton *graphicsTransformationBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    graphicsTransformationBtn.frame = CGRectMake(40, 300, 100, 40);
    graphicsTransformationBtn.backgroundColor = [UIColor greenColor];
    [graphicsTransformationBtn setTitle:@"图文转换" forState:UIControlStateNormal];
    [graphicsTransformationBtn addTarget:self action:@selector(progressGraphicsTransformationBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:graphicsTransformationBtn];
}

#pragma mark - progress
- (void)progressGraphicsBtn {
    
    YXGraphicsVC *vc = [[YXGraphicsVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)progressGraphicsTransformationBtn {
    
    YXGraphicTransformationVC *vc = [[YXGraphicTransformationVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
