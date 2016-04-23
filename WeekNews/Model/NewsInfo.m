//
//  NewsInfo.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "NewsInfo.h"

@implementation NewsInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    NewsInfo *info = [[NewsInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.iconUrl = [dict objectForKey:@"iconurl"];
    info.contentUrl = [dict objectForKey:@"contenturl"];
    info.desc = [dict objectForKey:@"desc"];
    return info;
}

@end
