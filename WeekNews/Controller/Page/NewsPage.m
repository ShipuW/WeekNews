//
//  NewsPage.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "NewsPage.h"

@implementation NewsPage

- (void)viewDidLoad{

    [super viewDidLoad];
    [self addBarWidget];
}

- (void)addBarWidget
{
    
    _barWidget = [[ColumnBarWidget alloc] init];
    _barWidget.view.frame = _barBackView.bounds;
    _barWidget.delegate = self;
    [_barBackView addSubview:_barWidget.view];
    [_barBackView sendSubviewToBack:_barWidget.view];//加上widget后放到底部，使原本的subview显示出来
    
}

- (void)didSelect:(NSInteger)pageIndex
{

}

@end
