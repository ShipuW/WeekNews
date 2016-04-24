//
//  NewsCell.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "NewsCell.h"
#import "NewsInfo.h"

@implementation NewsCell


- (void)initCell
{
    [super initCell];
    RegisterNotify(NofifyNewsIcon, @selector(downloadIcon:));
}

- (void)dealloc
{
    RemoveNofify;
}

- (void)setCellData:(NewsInfo *)info
{
    [super setCellData:info];
    
    _descLabel.numberOfLines = 2;
    _descLabel.text = info.desc;
#pragma mark - 应该用异步加载
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:info.iconUrl]];
    _imageView.image = [UIImage imageWithData:imageData];
    //[[FxDownload download] setNewsIcon:info imageView:_imageView];
}

- (void)downloadIcon:(NSNotification *)notification
{
    NSDictionary *dict = [notification object];
    NewsInfo *info = [dict objectForKey:@"info"];
    
    if ([info.ID isEqualToString:self.cellInfo.ID]) {
        UIImage *image = [dict objectForKey:@"data"];
        _imageView.image = image;
    }
}

@end
