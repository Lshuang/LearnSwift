//
//  Placeholder.m
//  UITextFieldPlaceholder
//
//  Created by Shawn Li on 15/8/13.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

#import "Placeholder.h"

@implementation Placeholder
+ (void)placeholderRedText:(NSString *)text textField:(UITextField *)textField textColor:(UIColor *)textColor {
    //编辑可变属性
    NSMutableAttributedString *placeholder = [[NSMutableAttributedString alloc] initWithString:text];
    [placeholder addAttribute:NSForegroundColorAttributeName value:textColor range:NSMakeRange(0, placeholder.length)];
    //居中
    textField.textAlignment = NSTextAlignmentCenter;
    textField.attributedPlaceholder = placeholder;
}
@end
