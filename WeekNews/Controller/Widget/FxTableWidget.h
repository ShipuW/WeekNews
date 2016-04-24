//
//  FxTableWidget.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//tableview 基类

#import "FxBaseWidget.h"

@interface FxTableWidget : FxBaseWidget{
    IBOutlet UITableView    *_tableView;
    CGFloat                 _cellHeight;
}

@property(nonatomic, strong) NSString   *cellIdentifier;
@property(nonatomic, assign) id         owner;
@end
