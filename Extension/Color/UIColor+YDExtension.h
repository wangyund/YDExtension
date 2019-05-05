//
//  UIColor+YDExtension.h
//  YDExtension
//
//  Created by rowena on 2019/5/5.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (YDExtension)

/**
 * 16进制颜色转UIColor
 * @pram rgbValue l6进制颜色表达
 */
+ (instancetype)yd_colorHex:(long)rgbValue;

/**
 * 16进制颜色转UIColor带透明度
 * @pram rgbValue l6进制颜色表达
 * @pram alpha 透明度
 */
+ (instancetype)yd_colorHex:(long)rgbValue alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
