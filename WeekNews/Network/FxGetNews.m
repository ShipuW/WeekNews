//
//  FxGetNews.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxGetNews.h"
#import "NewsInfo.h"

@implementation FxGetNews

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSArray *infos = [NewsInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
    
    //NSString *columnID = [_opInfo objectForKey:@"body"];
    //[FxDBManager saveNews:@{@"columnid":columnID,@"json":jsonString}];
}

@end
