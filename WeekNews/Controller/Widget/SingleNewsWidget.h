//
//  SingleNewsWidget.h
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxTableWidget.h"
#import "CategoryInfo.h"

@interface SingleNewsWidget : FxTableWidget{
    BOOL        _hasNextPage;
    NSInteger   _pageIndex;
}

@property(nonatomic, strong) CategoryInfo  *categoryInfo;


@end
