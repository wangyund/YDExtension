//
//  YDStyle.h
//  YDExtension
//
//  Created by rowena on 2019/8/28.
//  Copyright © 2019 wuyezhiguhun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDStyle : NSObject

#pragma mark ==== UIFont ====
+ (UIFont *)yd_FontHuge;
+ (UIFont *)yd_FontBig;
+ (UIFont *)yd_FontNormal;
+ (UIFont *)yd_FontSmall;


#pragma mark ==== UIColor ====
+ (UIColor *)yd_ColorBlackLightAlpha;
+ (UIColor *)yd_ColorBlack;
+ (UIColor *)yd_ColorGrayLight;
+ (UIColor *)yd_ColorGrayDark;
+ (UIColor *)yd_ColorOrangeLight;
+ (UIColor *)yd_ColorPaperDark;
+ (UIColor *)yd_ColorPaperLight;
+ (UIColor *)yd_ColorPaperBlack;
+ (UIColor *)yd_ColorPaperGray;


#pragma mark ==== CGFloat ====
/** 屏幕宽度 */
+ (CGFloat)yd_FloatScreenWidth;
/** 屏幕高度 */
+ (CGFloat)yd_FloatScreenHeight;
/** 状态栏高度 */
+ (CGFloat)yd_FloatStatusHeight;
/** 导航栏高度 */
+ (CGFloat)yd_FloatNavigationHeight;
/** TabBar高度 */
+ (CGFloat)yd_FloatTabBarHeight;
/** TabBar 内容高度 */
+ (CGFloat)yd_FloatTabBarContentHeight;
/** 底部安全区域高度 */
+ (CGFloat)yd_FloatBottomSafeHeight;
+ (CGFloat)yd_FloatMarginMassive;
+ (CGFloat)yd_FloatSpacingNormal;
+ (CGFloat)yd_FloatMarginNormal;
+ (CGFloat)yd_FloatMarginMinor;
+ (CGFloat)yd_FloatTextIntervalHorizontal;
+ (CGFloat)yd_FloatTextIntervalVertical;
+ (CGFloat)yd_FloatIconNormal;

@end

NS_ASSUME_NONNULL_END
