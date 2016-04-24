//
//  NewsPage.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBasePage.h"
#import "ColumnBarWidget.h"

@interface NewsPage : FxBasePage <ColumnBarDelegate> {
    IBOutlet UIView *_barBackView;
    ColumnBarWidget *_barWidget;
}

@end
