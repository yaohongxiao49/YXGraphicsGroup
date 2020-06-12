//
//  YXPicChartGraphicsModel.m
//  YXGraphicsTest
//
//  Created by ios on 2020/6/12.
//  Copyright © 2020 August. All rights reserved.
//

#import "YXPicChartGraphicsModel.h"

@implementation YXPicChartGraphicsModel

- (instancetype)initWithDic:(NSDictionary *)dic {
    self = [super init];
    
    if (self) {
        _title = [dic objectForKey:@"title"];
        _descript = [dic objectForKey:@"descript"];
        _count = [[dic objectForKey:@"count"] floatValue];
        _percent = [[dic objectForKey:@"percent"] floatValue];
        _color = [dic objectForKey:@"color"];
    }
    return self;
}

@end

@implementation YXPicChartGraphicsArrModel

+ (NSMutableArray *)arrayOfModelsFromDictionaries:(NSArray *)arr {
    
    NSMutableArray *dataAry = [NSMutableArray new];
    for (NSDictionary *dic in arr) {
        YXPicChartGraphicsModel *model = [[YXPicChartGraphicsModel alloc] initWithDic:dic];
        [dataAry addObject:model];
    }
    return dataAry;
}

@end
