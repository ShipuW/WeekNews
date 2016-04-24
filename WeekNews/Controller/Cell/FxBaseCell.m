//
//  FxBaseCell.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseCell.h"

@implementation FxBaseCell

- (void)initCell
{
}

- (void)setCellData:(BaseInfo *)info
{
    self.cellInfo = info;
    _titleLabel.text = info.name;//每个cell都有title
}

@end
