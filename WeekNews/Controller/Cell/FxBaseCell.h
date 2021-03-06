//
//  FxBaseCell.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseInfo.h"

@interface FxBaseCell : UITableViewCell {
    IBOutlet UILabel        *_titleLabel;
}

@property(nonatomic, strong) BaseInfo   *cellInfo;

- (void)initCell;
- (void)setCellData:(BaseInfo *)info;

@end
