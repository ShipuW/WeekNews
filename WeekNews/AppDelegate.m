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
    
    NSString *filePath = [FxGlobal getRootPath];
    [FxGlobal setNotBackUp:filePath];
    
    [WXApi registerApp:WXAppID];
    
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

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [WXApi handleOpenURL:url delegate:self];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    BOOL isSuc = [WXApi handleOpenURL:url delegate:self];
    return  isSuc;
}

-(void) onReq:(BaseReq*)req
{
    if([req isKindOfClass:[GetMessageFromWXReq class]]) {
        BASE_INFO_FUN(@"微信请求App提供内容，App要调用sendResp:GetMessageFromWXResp返回给微信");
    }
    else if([req isKindOfClass:[ShowMessageFromWXReq class]]) {
        ShowMessageFromWXReq* temp = (ShowMessageFromWXReq*)req;
        WXMediaMessage *msg = temp.message;
        WXAppExtendObject *obj = msg.mediaObject;
        
        //显示微信传过来的内容
        BASE_INFO_FUN(msg.title);
        BASE_INFO_FUN(msg.description);
        BASE_INFO_FUN(obj.extInfo);
    }
    else if([req isKindOfClass:[LaunchFromWXReq class]]) {
        BASE_INFO_FUN(@"从微信启动");
    }
}

-(void) onResp:(BaseResp*)resp
{
    if([resp isKindOfClass:[SendMessageToWXResp class]]) {
        BASE_INFO_FUN(([NSString stringWithFormat:@"发送媒体消息结果:%@",@(resp.errCode)]));
    }
}

@end
