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
 * iOS13后根据name加载，iOS13前16进制颜色转UIColor
 * @pram name iOS13后颜色的name
 * @pram rgbValue iOS13前颜色的16进制
 * @return 返回对应的颜色
 */
+ (instancetype)yd_colorName:(NSString *)name colorHex:(long)rgbValue {
    //判断系统是否在13.0之后
    if (@available(iOS 13.0, *)) {
        return [UIColor colorNamed:name];
    } else {
        return [UIColor yd_colorHex:rgbValue];
    }
}

/**
 * 16进制颜色转UIColor
 * @pram rgbValue l6进制颜色表达
 */
+ (instancetype)yd_colorHex:(long)rgbValue {
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];
}

/**
 * iOS13后根据name加载，iOS13前16进制颜色转UIColor
 * @pram name iOS13后颜色的name
 * @pram rgbValue iOS13前颜色的16进制
 * @pram alpha 透明度
 * @return 返回对应的颜色
 */
+ (instancetype)yd_colorName:(NSString *)name colorHex:(long)rgbValue alpha:(CGFloat)alpha  {
    //判断系统是否在13.0之后
    if (@available(iOS 13.0, *)) {
        return [UIColor colorNamed:name];
    } else {
        return [UIColor yd_colorHex:rgbValue alpha:alpha];
    }
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
