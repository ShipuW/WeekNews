//
//  FxBaseWidget.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseController.h"

@interface FxBaseWidget : FxBaseController

@property(strong, nonatomic) NSMutableArray    *listData;

- (void)updateUI;
- (void)reloadData;
- (BOOL)isReloadLocalData;

@end
