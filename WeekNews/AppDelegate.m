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
    LoginPage *page = [[LoginPage alloc] init];
    
    self.window.rootViewController = page;
    
    [self.window makeKeyAndVisible];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //BASE_INFO_FUN(@"1243");
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
