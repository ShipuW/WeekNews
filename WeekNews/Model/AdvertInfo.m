//
//  AdvertInfo.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "AdvertInfo.h"

@implementation AdvertInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    AdvertInfo *info = [[AdvertInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.imageUrl = [dict objectForKey:@"imageurl"];
    info.linkUrl = [dict objectForKey:@"linkurl"];
    
    return info;
}

@end
