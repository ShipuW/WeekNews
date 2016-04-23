//
//  FxBaseController.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseController.h"

@implementation FxBaseController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setNavBarImage];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];

}

//- (void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    [[UIApplication sharedApplication] setStatusBarHidden:NO];
//}

- (void)opFail:(NSString *)errorMessage
{
    BASE_INFO_FUN(errorMessage);
}

- (void)opSuccess:(id)data
{
}

- (void)setNavBarImage
{
    UIImage *image = [UIImage imageNamed:[FxGlobal isSystemLowIOS7]?@"NavigationBar44.png":@"NavigationBar64.png"];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    NSDictionary *attribute = @{
                                NSForegroundColorAttributeName:[UIColor whiteColor],
                                NSFontAttributeName:[UIFont systemFontOfSize:18]
                                };
    
    [self.navigationController.navigationBar setTitleTextAttributes:attribute];
}

//- (void)showIndicator:(NSString *)tipMessage
//             autoHide:(BOOL)hide
//           afterDelay:(BOOL)delay
//{
//    if (_activity == nil) {
//        _activity = [self showActivityInView:self.view];
//    }
//    
//    if (tipMessage != nil) {
//        _activity.labelText = tipMessage;
//        [_activity show:NO];
//    }
//    
//    if (hide && _activity.alpha>=1.0) {
//        if (delay)
//            [_activity hide:YES afterDelay:AnimationSecond];
//        else
//            [_activity hide:YES];
//    }
//}

- (UIButton *)customButton:(NSString *)imageName //定制buttonView
                  selector:(SEL)sel
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(0, 0, 44, 44);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

- (void)setNavigationLeft:(NSString *)imageName sel:(SEL)sel    //设置导航栏左键
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:[self customButton:imageName selector:sel]];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)setNavigationRight:(NSString *)imageName    //定制导航栏右键
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:[self customButton:imageName selector:@selector(doRight:)]];
    
    self.navigationItem.rightBarButtonItem = item;
}

- (IBAction)doRight:(id)sender
{
    
}

@end
