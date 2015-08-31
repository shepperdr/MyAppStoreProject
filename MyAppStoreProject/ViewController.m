//
//  ViewController.m
//  MyAppStoreProject
//
//  Created by Robert Shepperd on 8/31/15.
//  Copyright © 2015 Robert Shepperd. All rights reserved.
//

#import "ViewController.h"
@import iAd;

@interface ViewController ()<ADBannerViewDelegate>

@property (strong, nonatomic)ADBannerView *adBannerView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    self.adBannerView = [[ADBannerView alloc]initWithAdType:ADAdTypeBanner];
    self.adBannerView.frame = CGRectMake(0, 50, self.adBannerView.frame.size.width, self.adBannerView.frame.size.height);
    self.adBannerView.delegate = self;
    [self.view addSubview:self.adBannerView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma add bannerView delegate methods 

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    [UIView animateWithDuration:1.0 animations:^ {
        banner.frame = CGRectMake(0, 50, self.adBannerView.frame.size.width, self.adBannerView.frame.size.height);
         }];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    
    [UIView animateWithDuration:1.0 animations:^ {
        banner.frame = CGRectMake(0, -50, self.adBannerView.frame.size.width, self.adBannerView.frame.size.height);
       
         }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
