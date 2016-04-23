//
//  FxGetColumn.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxGetColumn.h"
#import "ColumnInfo.h"

@implementation FxGetColumn

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSArray *infos = [ColumnInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
    
    //NSString *pageId = [_opInfo objectForKey:@"body"];
    //[FxDBManager saveColumns:@{@"pageid":pageId, @"json":jsonString}];
}


@end
