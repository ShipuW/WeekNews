//
//  SingleNewsPage.m
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "SingleNewsPage.h"

@interface SingleNewsPage ()

@end

@implementation SingleNewsPage

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addNewsTable];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)addNewsTable{

    if (_widget == nil) {
        _widget = [[SingleNewsWidget alloc] init];
        _widget.categoryInfo = _categoryInfo;
        _widget.owner = self;//声明当前tableview所属view
        _widget.view.frame = self.view.bounds;
        
        [self.view addSubview:_widget.view];
    }
    else {
        _widget.categoryInfo = _categoryInfo;
        [_widget reloadData];
    }
}

@end
