//
//  ViewController.m
//  TSU-Schedule
//
//  Created by Nikita Romanov on 13.03.2022.
//

#import "ViewController.h"
#import "WebKit/webkit.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WKWebView *WebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    
    NSURL *url = [NSURL URLWithString:@"https://tsu-schedule.space/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [_WebView loadRequest:request];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDarkContent;
}


@end
