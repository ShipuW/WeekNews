//
//  ContentInfo.h
//  WeekNews
//
//  Created by admin on 16/4/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "BaseInfo.h"

@interface ContentInfo : BaseInfo

@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *source;
@property(nonatomic, strong) NSString *ptime;
@property(nonatomic, strong) NSString *digest;
@property(nonatomic, strong) NSString *body;
@property(nonatomic, strong) NSString *ec;
@property(nonatomic, strong) NSString *sourceurl;
@property(nonatomic, strong) NSArray  *images;

@end
