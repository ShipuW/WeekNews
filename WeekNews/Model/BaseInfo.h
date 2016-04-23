//
//  BaseInfo.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseInfo : NSObject

@property(nonatomic, strong) NSString    *ID;
@property(nonatomic, strong) NSString    *name;

+ (instancetype)infoFromDict:(NSDictionary *)dict;
+ (NSArray *)arrayFromDict:(NSDictionary *)dict;
+ (NSArray *)arrayFromArray:(NSArray *)array;

@end
