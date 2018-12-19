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
+ (UIImage *)yd_imageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
