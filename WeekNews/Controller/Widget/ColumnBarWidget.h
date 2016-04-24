//
//  ColumnBarWidget.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseWidget.h"
#import "FxButtonHelper.h"

@protocol ColumnBarDelegate;
@interface ColumnBarWidget : FxBaseWidget {
    IBOutlet UIScrollView   *_scrollView;
    FxButtonHelper          *_btnHelper;//处理选中按钮变色
}

@property(nonatomic, assign) NSInteger      pageIndex;
@property(nonatomic, assign) id<ColumnBarDelegate> delegate;

@end


@protocol ColumnBarDelegate <NSObject>

- (void)didSelect:(NSInteger)pageIndex;

@end