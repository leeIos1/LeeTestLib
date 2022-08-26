//
//  UIView+Administer.h
//  LSCreditConsume
//
//  Created by 朱吉达 on 2017/9/25.
//  Copyright © 2017年 LSCredit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Administer)
/**
 * Removes all subviews.
 * 移除当前视图下的所有子视图
 */
- (void)removeAllSubviews;
/**
 *  通过 CAShapeLayer 方式绘制虚线
 *
 *  param lineLength:     虚线的宽度
 *  param lineSpacing:    虚线的间距
 *  param lineColor:      虚线的颜色
 *  param lineDirection   虚线的方向  YES 为水平方向， NO 为垂直方向
 **/
- (void)drawLineLength:(int)lineLength lineSpacing:(int)lineSpacing lineColor:(UIColor *)lineColor lineDirection:(BOOL)isHorizonal;

//  设置边框虚线
-(CAShapeLayer*)setupViewDotWdith:(CGFloat)width dotColor:(UIColor *)color fullLineWidth:(CGFloat)fullWidth blankWidth:(CGFloat)blankWidth;

/// 边框虚框
/// @param width 线高度
/// @param color 颜色
/// @param fullWidth 空区高度
/// @param blankWidth 空区 宽度
/// @param radius 圆角
-(CAShapeLayer*)setupViewDotWdith:(CGFloat)width dotColor:(UIColor *)color fullLineWidth:(CGFloat)fullWidth blankWidth:(CGFloat)blankWidth radius:(CGFloat)radius;
@end