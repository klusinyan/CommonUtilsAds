//  Created by Karen Lusinyan on 05/01/2015.
//  Copyright (c) 2014 Karen Lusinyan. All rights reserved.

#import "ViewController.h"

#import "CommonBanner.h"
#import "CSAnimationView.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet CSAnimationView *animationView;
@property (nonatomic, weak) IBOutlet UILabel *testCase;

@end

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(bannerStatusDidChange:)
                                                 name:@"CommonBannerStatusDidChangeNotification"
                                               object:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.adsShouldDisplayAnimated = YES;
    self.canDisplayAds = YES;
}

- (void)bannerStatusDidChange:(NSNotification *)notificaion
{
    self.animationView.type = CSAnimationTypeZoomOut;
    self.animationView.delay = 0.0f;
    self.animationView.duration = 0.4f;
    [self.animationView startCanvasAnimation];
    
    self.testCase.text = [NSString stringWithFormat:@"Now testing... \n\"%@\"", [[notificaion userInfo] objectForKey:@"status"]];
}

@end
