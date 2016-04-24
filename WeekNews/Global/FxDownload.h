//
//  FxDownload.h
//  WeekNews
//
//  Created by admin on 16/4/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsInfo.h"

@interface FxDownload : NSObject

@property(nonatomic, strong)NSMutableDictionary *dictIcons;

+ (FxDownload *)download;

- (void)cancelDownload;
- (void)setNewsIcon:(NewsInfo *)newsInfo
          imageView:(UIImageView *)imageView;

@end
