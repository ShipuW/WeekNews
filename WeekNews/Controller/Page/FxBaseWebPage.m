//
//  FxBaseWebPage.m
//  WeekNews
//
//  Created by admin on 16/4/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "FxBaseWebPage.h"

@interface FxBaseWebPage ()

@end

@implementation FxBaseWebPage

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadHtml];
}

- (void)dealloc
{
    [_webView stopLoading];
    _webView.delegate = nil;
}

- (void)loadHtml
{
    [self showIndicator:LoadingTip autoHide:NO afterDelay:NO];
    
    NSURL *url = [NSURL URLWithString:_urlString];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    
    [_webView loadRequest:request];
}


#pragma mark - UIWebViewDelegate methods

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self hideIndicator];
}

- (BOOL)webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest*)request
 navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}


@end
