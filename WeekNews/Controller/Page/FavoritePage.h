//
//  FavoritePage.h
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseNavPage.h"
#import "FavoriteCategoryWidget.h"

@interface FavoritePage : FxBaseNavPage <FavoriteCategoryDelegate>{
    IBOutlet UIView         *_categoryView;
    FavoriteCategoryWidget  *_categoryWidget;
}

@end
