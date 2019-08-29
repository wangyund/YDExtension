//
//  YDStyle.m
//  YDExtension
//
//  Created by rowena on 2019/8/28.
//  Copyright © 2019 wuyezhiguhun. All rights reserved.
//

#import "YDStyle.h"
#import "UIColor+YDExtension.h"

@implementation YDStyle

#pragma mark ==== UIFont ====
+ (UIFont *)yd_FontHuge {
    return [UIFont systemFontOfSize:19];
}
+ (UIFont *)yd_FontBig {
    return [UIFont systemFontOfSize:17];
}
+ (UIFont *)yd_FontNormal {
    return [UIFont systemFontOfSize:15];
}
+ (UIFont *)yd_FontSmall {
    return [UIFont systemFontOfSize:13];
}


#pragma mark ==== UIColor ====
+ (UIColor *)yd_ColorBlackLightAlpha {
    return [UIColor yd_colorHex:0x000000 alpha:0.05];
}
+ (UIColor *)yd_ColorBlack {
    return [UIColor blackColor];
}
+ (UIColor *)yd_ColorGrayLight {
    return [UIColor yd_colorHex:0xcccccc];
}
+ (UIColor *)yd_ColorGrayDark {
    return [UIColor yd_colorHex:0x666666];
}
+ (UIColor *)yd_ColorOrangeLight {
    return [UIColor yd_colorHex:0xff9933];
}
+ (UIColor *)yd_ColorPaperDark {
    return [UIColor yd_colorHex:0xe8e7e2];
}
+ (UIColor *)yd_ColorPaperLight {
    return [UIColor yd_colorHex:0xf2f1ed];
}
+ (UIColor *)yd_ColorPaperBlack {
    return [UIColor yd_colorHex:0x62625f];
}
+ (UIColor *)yd_ColorPaperGray {
    return [UIColor yd_colorHex:0xaaa9a5];
}


#pragma mark ==== CGFloat ====
/** 屏幕宽度 */
+ (CGFloat)yd_FloatScreenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}
/** 屏幕高度 */
+ (CGFloat)yd_FloatScreenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}
/** 状态栏高度 */
+ (CGFloat)yd_FloatStatusHeight {
    return [[UIApplication sharedApplication] statusBarFrame].size.height;
}
/** 导航栏高度 */
+ (CGFloat)yd_FloatNavigationHeight {
    return [self yd_FloatStatusHeight] + 44;
}
/** TabBar高度 */
+ (CGFloat)yd_FloatTabBarHeight {
    return [self yd_FloatStatusHeight] > 30.0 ? (49.0 + 34.0) : 49.0;
}
/** TabBar 内容高度 */
+ (CGFloat)yd_FloatTabBarContentHeight {
    return 49.0;
}
/** 底部安全区域高度 */
+ (CGFloat)yd_FloatBottomSafeHeight {
    return [self yd_FloatStatusHeight] > 30.0 ? 34.0 : 0;
}
+ (CGFloat)yd_FloatMarginMassive {
    return 20;
}
+ (CGFloat)yd_FloatSpacingNormal {
    return 15;
}
+ (CGFloat)yd_FloatMarginNormal {
    return 10;
}
+ (CGFloat)yd_FloatMarginMinor {
    return 5;
}
+ (CGFloat)yd_FloatTextIntervalHorizontal {
    return 8;
}
+ (CGFloat)yd_FloatTextIntervalVertical {
    return 10;
}
+ (CGFloat)yd_FloatIconNormal {
    return 30;
}


@end
