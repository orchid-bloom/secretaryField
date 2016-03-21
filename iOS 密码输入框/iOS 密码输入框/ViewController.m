//
//  ViewController.m
//  iOS 密码输入框
//
//  Created by tianXin on 16/3/21.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "ViewController.h"
#import "BYSecretaryField.h"

@interface ViewController ()<BYSecretaryFieldDelegate>
{
    BYSecretaryField *_passWord;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //输入框
    _passWord = [[BYSecretaryField alloc] initWithFrame:CGRectMake(20, 20*3, self.view.bounds.size.width - 40, 40)];
    _passWord.secureTextEntry = YES;
    [_passWord becomeFirstResponder];
    _passWord.keyboardType = UIKeyboardTypeNumberPad;
    _passWord.layer.borderColor = [UIColor whiteColor].CGColor;
    _passWord.layer.borderWidth = 2;
    _passWord.layer.cornerRadius = 4;
    _passWord.secretaryDelegate = self;
    [self.view addSubview:_passWord];
}


-(void)sectetaryDidFinishedInput:(BYSecretaryField *)secField{
    if (secField.text.length == 6) {
        [secField resignFirstResponder];
    }
    NSLog(@"%@",secField.text);
}

@end
