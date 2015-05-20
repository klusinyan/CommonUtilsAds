//  Created by Karen Lusinyan on 05/01/2015.
//  Copyright (c) 2014 Karen Lusinyan. All rights reserved.

#import "ViewController.h"

#import "CommonBanner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.adsShouldDisplayAnimated = YES;
    self.canDisplayAds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
