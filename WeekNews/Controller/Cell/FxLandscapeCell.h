//
//  FxLandscapeCell.h
//  WeekNews
//
//  Created by admin on 16/4/24.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseInfo.h"

@interface FxLandscapeCell : UIView

@property(nonatomic, strong) BaseInfo   *cellInfo;
@property(nonatomic, assign) id         owner;

- (void)setCellData:(BaseInfo *)info;

@end
