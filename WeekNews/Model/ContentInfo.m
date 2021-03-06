//
//  ContentInfo.m
//  WeekNews
//
//  Created by admin on 16/4/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ContentInfo.h"
#import "ContentImageInfo.h"

@implementation ContentInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    ContentInfo *info = [[ContentInfo alloc] init];
    
    info.title = [dict objectForKey:@"title"];
    info.source = [dict objectForKey:@"source"];
    info.ptime = [dict objectForKey:@"ptime"];
    info.digest = [dict objectForKey:@"digest"];
    info.body = [dict objectForKey:@"body"];
    info.ec = [dict objectForKey:@"ec"];
    info.sourceurl = [dict objectForKey:@"shareLink"];
    
    NSArray *images =[dict objectForKey:@"img"];
    info.images = [ContentImageInfo arrayFromArray:images];
    
    return info;
}

@end
