//
//  FxGlobal.m
//  WeekNews
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxGlobal.h"

@implementation FxGlobal

+ (NSString *)getRootPath
{
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:RootPath];
    [FxFileUtility createPath:path];
    
    return path;
}

+ (NSString *)getCacheImage:(NSString *)fileName
{
    NSString *path = [NSString stringWithFormat:@"%@/%@", [FxGlobal getRootPath], CacheImagePath];
    
    [FxFileUtility createPath:path];
    path = [NSString stringWithFormat:@"%@/%@.jpg", path, fileName];
    
    return path;
}

@end
