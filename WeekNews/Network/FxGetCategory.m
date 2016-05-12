//
//  FxGetCategory.m
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxGetCategory.h"
#import "CategoryInfo.h"
#import "FxDBManager.h"
@implementation FxGetCategory

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSArray *infos = [CategoryInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
    
    NSString *pageId = [_opInfo objectForKey:@"body"];
    [FxDBManager saveCategorys:@{@"pageid":pageId, @"json":jsonString}];
}

@end
