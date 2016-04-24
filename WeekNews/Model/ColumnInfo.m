//
//  ColumnInfo.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ColumnInfo.h"

@implementation ColumnInfo



+ (NSMutableArray *)columnItems
{
    
    NSString *configFile = [[NSBundle mainBundle] pathForResource:@"ColumnsItems" ofType:@"plist"]; //查找文件
    NSArray *columnConfigs = [NSArray arrayWithContentsOfFile:configFile];
    NSMutableArray *columns = [[NSMutableArray alloc] init];
    
    if (columnConfigs.count <= 0) {
        BASE_ERROR_FUN(@"没有配置ColumnsItems.plist");
    }
    
    for (NSDictionary *dict in columnConfigs) {
        [columns addObject:[self infoFromDict:dict]];
    }
    
    return columns;
}

@end
