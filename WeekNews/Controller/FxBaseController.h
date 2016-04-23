//
//  FxBaseController.h
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FxBaseOperation.h"


@interface FxBaseController : UIViewController <FxOperationDelegate> {
    FxBaseOperation     *_operation;
}

- (void)showIndicator:(NSString *)tipMessage
             autoHide:(BOOL)hide
           afterDelay:(BOOL)delay;

- (void)setNavigationLeft:(NSString *)imageName sel:(SEL)sel;
- (void)setNavigationRight:(NSString *)imageName;

@end
