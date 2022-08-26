//
//  UILabel+instance.m
//  LSCreditConsume
//
//  Created by yangpenghua on 2017/9/18.
//  Copyright © 2017年 LSCredit. All rights reserved.
//

#import "UILabel+instance.h"

@implementation UILabel (instance)

+ (instancetype)labelWithTitleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont alignment:(NSTextAlignment)alignment{
    
    UILabel *label = [[UILabel alloc] init];
    if (!titleFont) {
        titleFont = [UIFont systemFontOfSize:14];
    }
    if (!titleColor) {
        titleColor = [UIColor blackColor];
    }
    label.textColor = titleColor;
    label.font = titleFont;
    label.numberOfLines = 0;
    label.textAlignment = alignment;
    return label;
}

+ (instancetype)labelWithTitleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize alignment:(NSTextAlignment)alignment{
    if (!titleColor) {
        titleColor = [UIColor blackColor];
    }
    UIFont *titleFont = [UIFont systemFontOfSize:14];
    if (fontSize > 0) {
        titleFont = [UIFont systemFontOfSize:fontSize];
    }
    UILabel *label = [UILabel labelWithTitleColor:titleColor titleFont:titleFont alignment:alignment];
    return label;
}

-(void)setText:(NSString*)text lineSpacing:(CGFloat)lineSpacing {
    if (!text || lineSpacing < 0.01) {
        self.text = text;
        return;
    }
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpacing];        //设置行间距
    [paragraphStyle setLineBreakMode:self.lineBreakMode];
    [paragraphStyle setAlignment:self.textAlignment];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [text length])];
    self.attributedText = attributedString;
}

@end
