//
//  FavoritePage.m
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FavoritePage.h"
#import "CategoryInfo.h"
#import "SingleNewsPage.h"
#import "FxAppSetting.h"

@implementation FavoritePage

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if([FxAppSetting getValue:@"token"] != nil){
        if (_categoryWidget == nil) {
            [self addCategoryWidget];
        }
    }else{
        [self showIndicator:@"请先登录" autoHide:YES afterDelay:YES];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)addCategoryWidget
{
    _categoryWidget = [[FavoriteCategoryWidget alloc] init];
    
    _categoryWidget.delegate = self;
    _categoryWidget.view.frame = _categoryView.bounds;
    [_categoryView addSubview:_categoryWidget.view];
    
}

#pragma mark - FavoriteCategoryDelegate
- (void)didSelect:(CategoryInfo*)categoryInfo{
    SingleNewsPage *page = [[SingleNewsPage alloc] init];
    
    page.categoryInfo = categoryInfo;
    page.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:page animated:YES];

}

@end
