//
//  UILabel+instance.h
//  LSCreditConsume
//
//  Created by yangpenghua on 2017/9/18.
//  Copyright © 2017年 LSCredit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (instance)

/**
 * 创建 UILabel
 *  @param titleColor    标题颜色
 *  @param titleFont 字体大小
 *  @return UILabel(文本水平居中)
 */
+ (instancetype)labelWithTitleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont alignment:(NSTextAlignment)alignment;

/**
 创建 UILabel

 @param titleColor 标题颜色
 @param fontSize 字体大小
 @param alignment (文本水平居中)
 @return UILabel
 */
+ (instancetype)labelWithTitleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize alignment:(NSTextAlignment)alignment;

/**
 设置文本,并指定行间距
 
 @param text 文本内容
 @param lineSpacing 行间距
 */
-(void)setText:(NSString*)text lineSpacing:(CGFloat)lineSpacing;

@end
