//
//  MyPage.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseNavPage.h"
#import "FxAppSetting.h"


@interface MyPage : FxBaseNavPage{
    IBOutlet UIImageView    *_logoImage;
    IBOutlet UILabel        *_appName;
    IBOutlet UILabel        *_appVersion;
    IBOutlet UIButton       *_loginButton;
    IBOutlet UIButton       *_clearCacheButton;
    NSString                *_token;
}

@end
