//
//  ViewController.m
//  点击空白区域和Return退出键盘
//
//  Created by pengzhilin on 16/4/24.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+DismissKeyboard.h"
@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupForDismissKeyboard];
    self.textField.delegate = self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.view endEditing:YES];
    return YES;
}

@end
