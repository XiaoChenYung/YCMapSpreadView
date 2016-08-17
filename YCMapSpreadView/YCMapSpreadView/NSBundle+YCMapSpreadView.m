//
//  NSBundle+YCMapSpreadView.m
//  YCMapSpreadView
//
//  Created by tm on 16/8/16.
//  Copyright © 2016年 tm. All rights reserved.
//

#import "NSBundle+YCMapSpreadView.h"
#import "YCMapSpreadView.h"
@implementation NSBundle (YCMapSpreadView)
+ (instancetype)mapSpreadView_Bundle
{
    static NSBundle *refreshBundle = nil;
    if (refreshBundle == nil) {
        // 这里不使用mainBundle是为了适配pod 1.x和0.x
        refreshBundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[YCMapSpreadView class]] pathForResource:@"YCMapSpreadView" ofType:@"bundle"]];
    }
    return refreshBundle;
}
/**
 *  @author 杨晓晨, 16-08-17 14:08:58
 *
 *  获取最里面的红色圆环
 *
 *  @return <#return value description#>
 */
+ (UIImage *)in_circle_Image
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self mapSpreadView_Bundle] pathForResource:@"in_circle_Image" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    arrowImage = [arrowImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return arrowImage;
}
/**
 *  @author 杨晓晨, 16-08-17 14:08:20
 *
 *  白色圆环
 *
 *  @return <#return value description#>
 */
+ (UIImage *)out_circle_Image
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self mapSpreadView_Bundle] pathForResource:@"out_circle_Image" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    arrowImage = [arrowImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return arrowImage;
}
/**
 *  @author 杨晓晨, 16-08-17 14:08:32
 *
 *  最外层扩展
 *
 *  @return <#return value description#>
 */
+ (UIImage *)spread_circle_Image
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self mapSpreadView_Bundle] pathForResource:@"spread_circle_Image" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    arrowImage = [arrowImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return arrowImage;
}
@end
