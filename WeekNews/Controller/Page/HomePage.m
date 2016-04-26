//
//  ViewController.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "HomePage.h"
#import "NewsPage.h"
#import "FavoritePage.h"
#import "MyPage.h"
#import "PageInfo.h"

@implementation HomePage

- (id)init
{
    self = [super init];
    if (self) {
        [self addTabControllers];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)addTabControllers
{
    self.tabBar.tintColor = [UIColor redColor];

#pragma 重复代码改用plist解析
//    NSMutableArray *controllers = [NSMutableArray array];
//    
//
//    FxBasePage *page = nil;
//    UINavigationController *navPage = nil;
//    
//    
//    page = [[NewsPage alloc]init];
//    page.title = @"新闻";
//    page.tabBarItem.image = [UIImage imageNamed:@"NewsIcon"];
//    navPage = [[UINavigationController alloc]initWithRootViewController:page];
//    [controllers addObject:navPage];
//    
//    
//    page = [[FavoritePage alloc]init];
//    page.title = @"收藏";
//    page.tabBarItem.image = [UIImage imageNamed:@"FavoriteIcon"];
//    navPage = [[UINavigationController alloc]initWithRootViewController:page];
//    [controllers addObject:navPage];
//    
//    page = [[MyPage alloc]init];
//    page.title = @"我";
//    page.tabBarItem.image = [UIImage imageNamed:@"MyIcon"];
//    navPage = [[UINavigationController alloc]initWithRootViewController:page];
//    [controllers addObject:navPage];
    
    self.viewControllers = [PageInfo pageControllers];
}

@end
