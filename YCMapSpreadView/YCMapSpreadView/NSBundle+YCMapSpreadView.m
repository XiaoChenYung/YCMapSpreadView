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

+ (UIImage *)in_circle_Image
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self mapSpreadView_Bundle] pathForResource:@"in_circle_Image" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    return arrowImage;
}

+ (UIImage *)out_circle_Image
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self mapSpreadView_Bundle] pathForResource:@"out_circle_Image" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    return arrowImage;
}

+ (UIImage *)spread_circle_Image
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self mapSpreadView_Bundle] pathForResource:@"spread_circle_Image" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    return arrowImage;
}
@end
