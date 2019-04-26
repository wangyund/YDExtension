//
//  UIImage+YDExtension.m
//  YDReadBook
//
//  Created by rowena on 2018/12/18.
//  Copyright © 2018年 rowena. All rights reserved.
//

#import "UIImage+YDExtension.h"

@implementation UIImage (YDExtension)

/**
 * 颜色转图片
 * @pram color 待转换颜色
 * @return 返回转换后的图片
 */
+ (UIImage *)yd_imageWithColor:(UIColor *)color {
    CGSize size = CGSizeMake(1, 1);
    if (!color || size.width <= 0 || size.height <= 0) return nil;
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 * 获取启动图 竖屏Image
 * @return Image
 */
+ (UIImage *)yd_getLaunchPortraitImage {
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Portrait";
    NSString *launchImage = nil;
    NSArray *imageDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imageDict) {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {
            launchImage = dict[@"UILaunchImageName"];
        }
    }
    return [UIImage imageNamed:launchImage];
}

/**
 * 获取启动图 横屏Image
 * @return Image
 */
+ (UIImage *)yd_getLaunchLandscapeImage {
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Landscape";
    NSString *launchImage = nil;
    NSArray *imageDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imageDict) {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {
            launchImage = dict[@"UILaunchImageName"];
        }
    }
    return [UIImage imageNamed:launchImage];
}

@end
