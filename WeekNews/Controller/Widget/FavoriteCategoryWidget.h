//
//  FavoriteCategoryWidget.h
//  WeekNews
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseWidget.h"
#import "CategoryInfo.h"

@protocol FavoriteCategoryDelegate;
@interface FavoriteCategoryWidget : FxBaseWidget{
    IBOutlet UIScrollView   *_categoryScrollView;
}

@property(nonatomic, assign) NSInteger      categoryIndex;
@property(nonatomic, assign) id<FavoriteCategoryDelegate> delegate;

@end

@protocol FavoriteCategoryDelegate <NSObject>

- (void)didSelect:(CategoryInfo*)categoryInfo;

@end
