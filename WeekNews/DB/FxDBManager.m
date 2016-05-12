//
//  FxDBManager.m
//  FxHejinbo
//
//  Created by hejinbo on 15/5/13.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxDBManager.h"
#import "FxDBManager+Private.h"

@implementation FxDBManager

#define TableCategorys  @"Categorys"
#define TableNews       @"News"


+ (void)saveCategorys:(NSDictionary *)dictInfo
{
    NSString *dbFile = [FxGlobal getUserDBFile];
    
    //存储
    [FxDBManager save:dictInfo
           primaryKey:@"pageid"
              inTable:TableCategorys
             inDBFile:dbFile];
}

+ (NSArray *)fetchCategorys:(NSString *)pageID
{
    NSString *dbFile = [FxGlobal getUserDBFile];
    NSDictionary *dict = @{@"pageid":pageID};
    NSArray *fields = @[@"pageid",@"json"];
    NSArray *contents = [FxDBManager fetchWithCondition:dict
                                              forFields:fields
                                                inTable:TableCategorys
                                               inDBFile:dbFile];
    
    if (contents.count > 0) {
        dict = [contents objectAtIndex:0];
        dict = [FxJsonUtility jsonValueFromString:[dict objectForKey:@"json"]];
        return [ColumnInfo arrayFromArray:[dict objectForKey:NetData]];
    }
    
    return nil;
}

+ (void)clearCategorys{
    NSString *dbFile = [FxGlobal getUserDBFile];
    
    [FxDBManager deleteWithCondition:nil inTable:TableCategorys inDBFile:dbFile];
}




+ (void)saveNews:(NSDictionary *)dictInfo
{
    NSString *dbFile = [FxGlobal getUserDBFile];
    
    //存储
    [FxDBManager save:dictInfo
           primaryKey:@"columnid"
              inTable:TableNews
             inDBFile:dbFile];
}

+ (NSArray *)fetchNews:(NSString *)columnID
{
    NSString *dbFile = [FxGlobal getUserDBFile];
    NSDictionary *dict = @{@"columnid":columnID};
    NSArray *fields = @[@"columnid",@"json"];
    NSArray *contents = [FxDBManager fetchWithCondition:dict
                         forFields:fields
                         inTable:TableNews
                         inDBFile:dbFile];
    
    if (contents.count > 0) {
        dict = [contents objectAtIndex:0];
        dict = [FxJsonUtility jsonValueFromString:[dict objectForKey:@"json"]];
        return [NewsInfo arrayFromArray:[dict objectForKey:NetData]];
    }
    
    return nil;
}

+ (void)clearNews{
    NSString *dbFile = [FxGlobal getUserDBFile];
    [FxDBManager deleteWithCondition:nil inTable:TableNews inDBFile:dbFile];

}

@end
