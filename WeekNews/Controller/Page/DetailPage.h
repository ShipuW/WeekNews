//
//  DetailPage.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseWebPage.h"
#import "NewsInfo.h"

@interface DetailPage : FxBaseWebPage

@property(nonatomic, strong) NewsInfo   *newsInfo;

@end
