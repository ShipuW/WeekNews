//
//  PageInfo.m
//  WeekNews
//
//  Created by admin on 16/4/24.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "PageInfo.h"


@implementation PageInfo

+ (PageInfo *)infoFromDict:(NSDictionary *)dict
{
    PageInfo *info = [[PageInfo alloc] init];
    
    info.ID = [dict objectForKey:@"ClassName"];
    info.name = [dict objectForKey:@"Title"];
    info.image = [dict objectForKey:@"Image"];
    info.selectImage = [dict objectForKey:@"SelectImage"];
    info.unLoad = [[dict objectForKey:@"UnLoad"] boolValue];
    
    return info;
}

+ (NSArray *)pages
{
    NSString *configFile = [[NSBundle mainBundle] pathForResource:@"TabBarPages" ofType:@"plist"]; //查找文件
    NSArray *pageConfigs = [NSArray arrayWithContentsOfFile:configFile];
    NSMutableArray *pages = [[NSMutableArray alloc] init];
    
    if (pageConfigs.count <= 0) {
        BASE_ERROR_FUN(@"没有配置TabBarPages.plist");
    }
    
    for (NSDictionary *dict in pageConfigs) {
        [pages addObject:[self infoFromDict:dict]];
    }
    
    return pages;
}

+ (NSArray *)pageControllers
{
    NSMutableArray *controllers = [[NSMutableArray alloc]init];
    NSArray *pages= [self pages];
    UIViewController *pageViewController = nil;
    UINavigationController *navCon = nil;
    for (PageInfo *page in pages){
        pageViewController = [[NSClassFromString(page.ID) alloc]init];
        navCon = [[UINavigationController alloc]initWithRootViewController:pageViewController];
        pageViewController.title = page.name;
        pageViewController.tabBarItem.image = [UIImage imageNamed:page.image];
        pageViewController.tabBarItem.selectedImage = [UIImage imageNamed:page.selectImage];
        [controllers addObject:navCon];
    }
    return controllers;
    
}





@end
