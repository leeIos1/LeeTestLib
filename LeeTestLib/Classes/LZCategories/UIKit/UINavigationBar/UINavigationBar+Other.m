//
//  UINavigationBar+Other.m
//  LSCreditConsume
//
//  Created by 朱吉达 on 2017/10/26.
//  Copyright © 2017年 LSCredit. All rights reserved.
//

#import "UINavigationBar+Other.h"

@implementation UINavigationBar (Other)
-(void)setColor:(UIColor *)color{
    UIView * view = [[UIView alloc]init];
    [view setFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, [[UIApplication sharedApplication] statusBarFrame].size.height + 44.0)];
    [view setBackgroundColor:color];
    [self setValue:view forKey:@"backgroundView"];
}
@end
