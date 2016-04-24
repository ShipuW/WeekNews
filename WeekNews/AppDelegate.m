//
//  AppDelegate.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginPage.h"
#import "AdvertPage.h"
#import "HomePage.h"

@implementation AppDelegate


+ (AppDelegate *)appDeg
{
    return  (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)showHomePage
{
    HomePage *page = [[HomePage alloc] init];
    //UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:page];
    
    self.window.rootViewController = page;//navController;
    
    [self.window makeKeyAndVisible];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //BASE_INFO_FUN(@"1243");
    [application setStatusBarStyle:UIStatusBarStyleLightContent];//设置白色状态栏
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    self.window.rootViewController = [[LoginPage alloc] init];
//    
//    [self.window makeKeyAndVisible];

    [AdvertPage showAdvertPage];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    if ([AdvertPage canShowAdvertPage]) {
        [AdvertPage showAdvertPage];
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
