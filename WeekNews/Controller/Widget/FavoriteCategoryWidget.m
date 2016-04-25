//
//  FavoriteCategoryWidget.m
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FavoriteCategoryWidget.h"
#import "FxGetCategory.h"

@implementation FavoriteCategoryWidget

- (void)viewDidLoad
{
    [super viewDidLoad];
}



- (void)requestServerOp//获取网络column数据
{
    NSDictionary *dictInfo = @{@"url":CategoryURL,
                               @"body":@"1"
                               };

    _operation = [[FxGetCategory alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}

- (void)opSuccess:(NSMutableArray *)data//
{
    [super opSuccess:data];
    self.listData = data;
    [self updateUI];

}

- (void)updateUI//更新页面
{
    [self addCateoryButton];
    self.categoryIndex = 0;
}

- (void)addCateoryButton//widget上添加按钮
{
    // 先删除再添加
    for (UIView *view in _categoryScrollView.subviews) {
        [view removeFromSuperview];
    }
    
    NSInteger index = 0;
    CGFloat origin_x = 0;
    CGFloat origin_y = 0;
    CGFloat margin = 10.0f;
    CGFloat side = (self.view.frame.size.width / 2) - (2 * margin);
    //CGFloat insets = 18.0f;
    //UIEdgeInsets buttonInsets = UIEdgeInsetsMake(0.0f, insets, 0.0f, insets);

    UIButton *button = nil;
    CategoryInfo *info = nil;
    
    //_scrollView.contentInset = buttonInsets;
    
    for(index=0; index<self.listData.count; index++) {

        info = [self.listData objectAtIndex:index];
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.tag = index+1;
        [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:info.name forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        if(origin_x >= self.view.frame.size.width){
            origin_x = 0;
            origin_y += (2* margin + side);
        }
        button.frame = CGRectMake(origin_x + margin, origin_y + margin, side, side);
        [button setBackgroundImage:[UIImage imageNamed:@"CategoryIcon.png"] forState:UIControlStateNormal];
        origin_x += (2* margin + side);
        [_categoryScrollView addSubview:button];
    }
    _categoryScrollView.contentSize = CGSizeMake(self.view.frame.size.width, origin_y += (2* margin + side));
}


- (void)buttonClicked:(UIButton *)sender
{
    _categoryIndex = sender.tag -1;
    
    [self.delegate didSelect:[self.listData objectAtIndex:_categoryIndex]];//轮到代理实现内容
}
@end
