//
//  FxBaseController.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseController.h"

@implementation FxBaseController

- (void)opFail:(NSString *)errorMessage
{
    BASE_INFO_FUN(errorMessage);
}

- (void)opSuccess:(id)data
{
}

//- (void)showIndicator:(NSString *)tipMessage
//             autoHide:(BOOL)hide
//           afterDelay:(BOOL)delay
//{
//    if (_activity == nil) {
//        _activity = [self showActivityInView:self.view];
//    }
//    
//    if (tipMessage != nil) {
//        _activity.labelText = tipMessage;
//        [_activity show:NO];
//    }
//    
//    if (hide && _activity.alpha>=1.0) {
//        if (delay)
//            [_activity hide:YES afterDelay:AnimationSecond];
//        else
//            [_activity hide:YES];
//    }
//}

@end
