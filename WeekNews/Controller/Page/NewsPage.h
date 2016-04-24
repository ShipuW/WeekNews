//
//  NewsPage.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBasePage.h"
#import "ColumnBarWidget.h"
#import "FxLandscapeTableView.h"

@interface NewsPage : FxBasePage <ColumnBarDelegate> {
    IBOutlet UIView                 *_barBackView;
    IBOutlet FxLandscapeTableView   *_tableView;
    ColumnBarWidget                 *_barWidget;
}

@end
