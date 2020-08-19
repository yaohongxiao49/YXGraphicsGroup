//
//  YXGraphicTransformationVC.m
//  YXGraphicsTest
//
//  Created by ios on 2020/8/19.
//  Copyright © 2020 August. All rights reserved.
//

#import "YXGraphicTransformationVC.h"

@interface YXGraphicTransformationVC ()

@end

@implementation YXGraphicTransformationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *img = [self imageWithTextStr:@"你多少斤封ID时间发卡戴珊杰弗里斯断开断开里番那算了DNF刷脸卡你发了打瞌睡你发了多少能打开耐腐蚀耐腐蚀那地方可能是南方" font:[UIFont systemFontOfSize:16] width:self.view.bounds.size.width - 40 textAlignment:NSTextAlignmentLeft];
    
    UIImageView *imgV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, img.size.width, img.size.height)];
    [imgV setImage:img];
    [self.view addSubview:imgV];
    imgV.center = self.view.center;
}

- (UIImage *)imageWithTextStr:(NSString *)string font:(UIFont *)font width:(CGFloat)width textAlignment:(NSTextAlignment)textAlignment {
    
    NSDictionary *attributeDic = @{NSFontAttributeName:font};
    CGSize size = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:attributeDic context:nil].size;
    NSInteger retWidth = ceil(size.width);
    NSInteger retHeight = ceil(size.height);
    if (retWidth %2 != 0) {
        retWidth++;
    }
    if (retHeight %2 != 0) {
        retHeight++;
    }
    size = CGSizeMake(retWidth, retHeight);
    if ([UIScreen.mainScreen respondsToSelector:@selector(scale)]) {
        if (UIScreen.mainScreen.scale == 2.0) {
            UIGraphicsBeginImageContextWithOptions(size, NO, 1.0);
        }
        else {
            UIGraphicsBeginImageContext(size);
        }
    }
    else {
        UIGraphicsBeginImageContext(size);
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    [[UIColor colorWithWhite:0 alpha:0] set];
    
    CGRect rect = CGRectMake(0, 0, retWidth, retHeight);
    CGContextFillRect(context, rect);
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = textAlignment;
    NSDictionary *attributes = @{NSForegroundColorAttributeName:[UIColor redColor], NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraph};
    [string drawInRect:rect withAttributes:attributes];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
