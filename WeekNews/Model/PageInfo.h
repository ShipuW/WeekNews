//
//  PageInfo.h
//  WeekNews
//
//  Created by admin on 16/4/24.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "BaseInfo.h"

@interface PageInfo : BaseInfo

@property(nonatomic, strong) NSString    *image;
@property(nonatomic, strong) NSString    *selectImage;
@property(nonatomic, assign) BOOL        unLoad;

+ (NSArray *)pageControllers;

@end
