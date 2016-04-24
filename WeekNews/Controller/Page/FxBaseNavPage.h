//
//  FxBaseNavPage.h
//  WeekNews
//
//  Created by admin on 16/4/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseController.h"

@interface FxBaseNavPage : FxBaseController

@property(nonatomic, strong) NSString   *barBackgroudImage;

- (void)setNavigationItem:(NSString *)title
                 selector:(SEL)selector
                  isRight:(BOOL)isRight;

@end
