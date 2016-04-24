//
//  FxBaseWebPage.h
//  WeekNews
//
//  Created by admin on 16/4/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseNavPage.h"

@interface FxBaseWebPage : FxBaseNavPage {
    IBOutlet UIWebView  *_webView;
}

@property(nonatomic, strong) NSString   *urlString;

- (void)loadHtml;

@end
