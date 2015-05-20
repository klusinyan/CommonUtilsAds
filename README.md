# CommonUtilsAds

[![CI Status](http://img.shields.io/travis/Karen Lusinyan/CommonUtilsAds.svg?style=flat)](https://travis-ci.org/Karen Lusinyan/CommonUtilsAds)
[![Version](https://img.shields.io/cocoapods/v/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)
[![License](https://img.shields.io/cocoapods/l/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)
[![Platform](https://img.shields.io/cocoapods/p/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.


// Storyboard: create ContainerViewController as a rootViewController

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    [CommonBanner regitserProvider:[CommonBannerProviderGAd class]
                      withPriority:CommonBannerPriorityLow
                     requestParams:@{keyAdUnitID    : @"ca-app-pub-3940256099942544/2934735716",
                                     keyTestDevices : @[@"104e7e015323c4993bcecf1b7fc91b08"]}];
    
    [CommonBanner regitserProvider:[CommonBannerProviderCustom class]
                      withPriority:CommonBannerPriorityLow
                     requestParams:nil];
    
    [CommonBanner regitserProvider:[CommonBannerProvideriAd class]
                      withPriority:CommonBannerPriorityHigh
                     requestParams:nil];
    
    [CommonBanner setDebugMode:NO];
    [CommonBanner startManaging];
    
    //[CommonBanner setBannerPosition:CommonBannerPositionTop];

    return YES;
}

## Requirements

## Installation

CommonUtilsAds is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CommonUtilsAds"
```

## Author

Karen Lusinyan, karen.lusinyan.developerios@gmail.it

## License

CommonUtilsAds is available under the MIT license. See the LICENSE file for more info.
