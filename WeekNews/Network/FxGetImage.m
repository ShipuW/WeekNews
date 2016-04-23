//
//  FxGetImage.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxGetImage.h"

@implementation FxGetImage

- (void)parseData:(NSData *)data
{
    [_delegate opSuccessEx:data opinfo:_opInfo];
}

@end
