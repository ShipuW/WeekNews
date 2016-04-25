//
//  MyPage.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "MyPage.h"
#import "LoginPage.h"

@implementation MyPage

- (void)viewDidLoad{

    [super viewDidLoad];
    
    
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    _token = [FxAppSetting getValue:@"token"];
    if (_token == nil){
        [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    }else{
        [_loginButton setTitle:@"退出登录" forState:UIControlStateNormal];
    }
}

- (IBAction)tapLoginButton:(id)sender{


    if (_token == nil){
        LoginPage *page = [[LoginPage alloc] init];
        [self.navigationController pushViewController:page animated:YES];
        
    }else{
        [self showIndicator:@"正在退出" autoHide:YES afterDelay:YES];
        [FxAppSetting removeValue:@"token"];
        [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
        _token = [FxAppSetting getValue:@"token"];
    }
    
    
}


@end
