//
//  UIImage+YDExtension.h
//  YDReadBook
//
//  Created by rowena on 2018/12/18.
//  Copyright © 2018年 rowena. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (YDExtension)

/**
 * 颜色转图片
 * @pram color 待转换颜色
 * @return 返回转换后的图片
 */
+ (UIImage *)YDimageWithColor:(UIColor *)color;

/**
 * 获取启动图 竖屏Image
 * @return Image
 */
+ (UIImage *)YDgetLaunchPortraitImage;

/**
 * 获取启动图 横屏Image
 * @return Image
 */
+ (UIImage *)YDgetLaunchLandscapeImage;

@end

NS_ASSUME_NONNULL_END
