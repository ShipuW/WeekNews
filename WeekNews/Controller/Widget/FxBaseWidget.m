//
//  FxBaseWidget.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseWidget.h"

@implementation FxBaseWidget

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self reloadData];
}

- (void)updateUI
{
}

- (void)reloadData
{
    if (![self isReloadLocalData]) {
        [self requestServer];
    }
    else {
        [self requestServerOp];//实施子类中网络请求方法
        [self updateUI];
    }
}

- (BOOL)isReloadLocalData
{
    BOOL isReload = self.listData.count > 0;
    
    if (isReload) {
        [self updateUI];
    }
    
    return isReload;
}

- (void)requestServer
{
    [self showIndicator:LoadingTip autoHide:NO afterDelay:NO];
    [self requestServerOp];
}

- (void)requestServerOp
{
}

@end
