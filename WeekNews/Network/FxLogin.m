//
//  FxLogin.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxLogin.h"
#import "UserInfo.h"

@implementation FxLogin

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSDictionary *dictData = [dict objectForKey:NetData];
    UserInfo *info = [UserInfo infoFromDict:dictData];
    
    [_delegate opSuccess:info];
}

@end
