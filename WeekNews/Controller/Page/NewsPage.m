//
//  NewsPage.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "NewsPage.h"
#import "NewsLandscapeCell.h"
#import "ColumnInfo.h"
#import "FxDate.h"

@implementation NewsPage

- (void)viewDidLoad{

    [super viewDidLoad];
    //[self addBarWidget];
    
    _tableView.gapBetweenCells = 2;
    _tableView.cellsToPreload = 1;
    _tableView.currentCellIndex = [[FxDate getWeekDay:[NSDate date]] intValue] - 1;//设置当前页

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (_barWidget == nil) {
        [self addBarWidget];
    }
    [_tableView reloadData];//////////////此处一直差一个reload，导致第一页加载不出来
}

- (void)addBarWidget
{
    _barWidget = [[ColumnBarWidget alloc] init];
    
    _barWidget.delegate = self;
    _barWidget.view.frame = _barBackView.bounds;
    [_barBackView addSubview:_barWidget.view];
    
    [_barBackView sendSubviewToBack:_barWidget.view];//加上widget后放到底部，使原本的subview显示出来
    

}

- (void)didSelect:(NSInteger)pageIndex//column bar代理
{
    if (_tableView.currentCellIndex != pageIndex) {
        _tableView.currentCellIndex = pageIndex;
        [_tableView reloadData];
    }
}

#pragma mark - FxLandscapeViewDataSource & FxLandscapeViewDelegate methods

- (NSInteger)numberOfCellsInTableView:(FxLandscapeTableView *)tableView
{
    return _barWidget.listData.count;
}

- (FxLandscapeCell *)cellInTableView:(FxLandscapeTableView *)tableView atIndex:(NSInteger)index
{
    NewsLandscapeCell *cell = (NewsLandscapeCell *)[tableView dequeueReusableCell];
    
    if (cell == nil) {
        cell = [[NewsLandscapeCell alloc] initWithFrame:_tableView.bounds];
        cell.owner = self;
    }
    
    ColumnInfo *info = [_barWidget.listData objectAtIndex:index];
    [cell setCellData:info];
    
    return cell;
}

- (void)tableView:(FxLandscapeTableView *)tableView didChangeAtIndex:(NSInteger)index
{
    _barWidget.pageIndex = index;
   // NSLog(@"moving");
}


@end
