//
//  ViewController.m
//  UITextFieldPlaceholder
//
//  Created by Shawn Li on 15/8/13.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

#import "ViewController.h"
#import "Placeholder.h"

//设置当输入框需要一些提示时，可以设置。
@interface ViewController ()
@property (nonatomic, strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 250, 30)];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.placeholder = @"我是默认文字";
    [self.view addSubview:_textField];
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [testBtn setTitle:@"PUSH ME BABY" forState:UIControlStateNormal];
    testBtn.backgroundColor = [UIColor redColor];
    testBtn.frame = CGRectMake(100, 100, 100, 100);
    [testBtn addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
}

- (void)animationPlaceholder {
    //延时
    [Placeholder placeholderRedText:@"就是我babay" textField:_textField textColor:[UIColor redColor]];
    [self performSelector:@selector(placeholderGray) withObject:nil afterDelay:1.0];
}

- (void)placeholderGray {
    [Placeholder placeholderRedText:@"PUSH ME BABY" textField:_textField textColor:[UIColor grayColor]];
    _textField.textAlignment = NSTextAlignmentLeft;
    _textField.placeholder = @"我是默认文字";
}


- (void)clicked {
    if (_textField.text.length == 0) {
        [self animationPlaceholder];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
