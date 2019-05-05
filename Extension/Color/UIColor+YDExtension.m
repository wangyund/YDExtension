//
//  UIColor+YDExtension.m
//  YDExtension
//
//  Created by rowena on 2019/5/5.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import "UIColor+YDExtension.h"

@implementation UIColor (YDExtension)

/**
 * 16进制颜色转UIColor
 * @pram rgbValue l6进制颜色表达
 */
+ (instancetype)yd_colorHex:(long)rgbValue {
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];
}

/**
 * 16进制颜色转UIColor带透明度
 * @pram rgbValue l6进制颜色表达
 * @pram alpha 透明度
 */
+ (instancetype)yd_colorHex:(long)rgbValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alpha];
}

@end
