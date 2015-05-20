# CommonUtilsAds

[![CI Status](http://img.shields.io/travis/Karen Lusinyan/CommonUtilsAds.svg?style=flat)](https://travis-ci.org/Karen Lusinyan/CommonUtilsAds)
[![Version](https://img.shields.io/cocoapods/v/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)
[![License](https://img.shields.io/cocoapods/l/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)
[![Platform](https://img.shields.io/cocoapods/p/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

  Storyboard/programmatically: CREATE rootViewController "CommonBannerController" as a container

    [CommonBanner regitserProvider:[CommonBannerProvideriAd class]
                      withPriority:CommonBannerPriorityHigh
                     requestParams:nil];

    [CommonBanner regitserProvider:[CommonBannerProviderGAd class]
                      withPriority:CommonBannerPriorityLow
                     requestParams:@{keyAdUnitID    : @"your-adUnitId provided by Google",
                                     keyTestDevices : @[@"your-test-device-id"]}];
    /*
    [CommonBanner regitserProvider:[CommonBannerProviderCustom class]
                      withPriority:CommonBannerPriorityLow
                     requestParams:nil];
    //*/
    
    //[CommonBanner setDebugMode:NO];
    [CommonBanner startManaging];

    In your "ViewController.m" #import CommonBanner.h 
    To present ads SIMPLY CALL self.canDisplayAds = YES
    
    That's it! 
    Enjoy

## Requirements

    Requires iOS 7 and later
    Written in ARC

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
