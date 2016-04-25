//
//  SingleNewsPage.h
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseNavPage.h"
#import "SingleNewsWidget.h"
#import "CategoryInfo.h"

@interface SingleNewsPage : FxBaseNavPage{
    SingleNewsWidget      *_widget;
}

@property(nonatomic, strong) CategoryInfo    *categoryInfo;
@end
