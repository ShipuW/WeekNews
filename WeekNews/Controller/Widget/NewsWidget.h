//
//  NewsWidget.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//新闻界面tableview

#import "FxTableWidget.h"
#import "ColumnInfo.h"

@interface NewsWidget : FxTableWidget {
    BOOL        _hasNextPage;
    NSInteger   _pageIndex;
}

@property(nonatomic, strong) ColumnInfo   *columnInfo;

@end

