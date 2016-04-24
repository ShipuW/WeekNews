//
//  NewsLandscapeCell.m
//  WeekNews
//
//  Created by admin on 16/4/24.
//  Copyright © 2016年 admin. All rights reserved.
//横向滑动的cell ，页面当cell

#import "NewsLandscapeCell.h"

@implementation NewsLandscapeCell

- (void)setCellData:(ColumnInfo *)info
{
    [super setCellData:info];
    
    if (_widget == nil) {
        _widget = [[NewsWidget alloc] init];
        _widget.columnInfo = info;
        _widget.owner = self.owner;
        _widget.view.frame = self.bounds;
        
        [self addSubview:_widget.view];
    }
    else {
        _widget.columnInfo = info;
        [_widget reloadData];
    }
}

@end
