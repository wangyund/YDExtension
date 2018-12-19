//
//  UIView+YDExtension.m
//  YDReadBook
//
//  Created by rowena on 2018/11/22.
//  Copyright © 2018年 rowena. All rights reserved.
//

#import "UIView+YDExtension.h"

@implementation UIView (YDExtension)

/**
 * 删除所有的子View
 */
- (void)yd_removeAllSubviews {
    while (self.subviews.count) {
        [self.subviews.lastObject removeFromSuperview];
    }
}

@end
