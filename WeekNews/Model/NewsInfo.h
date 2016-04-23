//
//  NewsInfo.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "BaseInfo.h"

@interface NewsInfo : BaseInfo

@property(nonatomic, strong) NSString    *desc;
@property(nonatomic, strong) NSString    *iconUrl;
@property(nonatomic, strong) NSString    *contentUrl;

@end
