//
//  SingleNewsWidget.m
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "SingleNewsWidget.h"
#import "FxGetNews.h"
#import "FxBaseCell.h"
#import "DetailPage.h"


@implementation SingleNewsWidget

- (void)viewDidLoad
{
    self.cellIdentifier = @"NewsCell";
    _cellHeight = 80;
    _pageIndex = 0;
    _hasNextPage = NO;
    self.listData = [[NSMutableArray alloc] init];
    [super viewDidLoad];
}

- (void)reloadData
{
    // 停止网络请求
    [_operation cancelOp];
    _operation = nil;
    _pageIndex = 0;
    
    // 先清除上次内容
    [self.listData removeAllObjects];
    [super reloadData];
}

- (void)requestServerOp
{
    
    NSString *url = [NSString stringWithFormat:CategoryURLFmt,
                     self.categoryInfo.ID];
    NSDictionary *dictInfo = @{@"url":url,
                               @"body":self.categoryInfo.ID,
                               };
    
    _operation = [[FxGetNews alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}

- (void)requestNextPageServerOp
{
    NSString *url = [NSString stringWithFormat:CategoryURLFmt,
                     self.categoryInfo.ID];
    NSString *body = [NSString stringWithFormat:@"pageindex=%@",@(_pageIndex)];
    NSDictionary *dictInfo = @{@"url":url,
                               @"body":body
                               };
    
    _operation = [[FxGetNews alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}

- (void)opSuccess:(NSArray *)data
{
    _hasNextPage = YES;//服务端应该返回值
    if(_pageIndex == 3) _hasNextPage = NO;//加载三页后没有下一页测试
    _operation = nil;
    
    if (_pageIndex == 0) {
        [self.listData removeAllObjects];
    }
    _pageIndex++;
    
    [self.listData addObjectsFromArray:data];
    [self updateUI];
    [self hideIndicator];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath.row < self.listData.count ? _cellHeight:44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _hasNextPage?self.listData.count+1:self.listData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = nil;
    BaseInfo *info = nil;
    
    if (indexPath.row < self.listData.count) {
        cellIdentifier = self.cellIdentifier;
        info = [self.listData objectAtIndex:indexPath.row];
    }
    else {
        cellIdentifier = @"NewsMoreCell";
        [self requestNextPageServerOp];
    }
    
    FxBaseCell *cell = (FxBaseCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        NSArray* Objects = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:tableView options:nil];
        
        cell = [Objects objectAtIndex:0];
        [cell initCell];
    }
    
    [cell setCellData:info];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailPage *page = [[DetailPage alloc] init];
    
    page.newsInfo = [self.listData objectAtIndex:indexPath.row];
 
#pragma mark - self 是一个普通controller没有navigation ，只有page有navigation，所以先找到他所属page
    UIViewController *owner =  self.owner;
    [owner.navigationController pushViewController:page animated:YES];
}

@end

