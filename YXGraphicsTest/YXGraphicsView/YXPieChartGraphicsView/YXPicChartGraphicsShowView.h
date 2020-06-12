//
//  YXPicChartGraphicsShowView.h
//  YXGraphicsTest
//
//  Created by ios on 2020/6/12.
//  Copyright © 2020 August. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YXPieChartGraphicsView.h"

NS_ASSUME_NONNULL_BEGIN

@interface YXPicChartGraphicsShowView : UIView

- (instancetype)initWithFrame:(CGRect)frame arr:(NSArray <YXPicChartGraphicsModel *>*)arr title:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
