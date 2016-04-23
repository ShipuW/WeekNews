//
//  AdvertPage.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBasePage.h"

@interface AdvertPage : FxBasePage
{
    IBOutlet UIImageView *_advertImageView;
}

+ (BOOL)canShowAdvertPage;
+ (void)showAdvertPage;

@end
