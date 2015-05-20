# CommonUtilsAds

[![CI Status](http://img.shields.io/travis/Karen Lusinyan/CommonUtilsAds.svg?style=flat)](https://travis-ci.org/Karen Lusinyan/CommonUtilsAds)
[![Version](https://img.shields.io/cocoapods/v/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)
[![License](https://img.shields.io/cocoapods/l/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)
[![Platform](https://img.shields.io/cocoapods/p/CommonUtilsAds.svg?style=flat)](http://cocoapods.org/pods/CommonUtilsAds)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Storyboard: create CommonBannerController and assign it as a rootViewController (container controller)
\n put intilalizzation in your AppDelegate 

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
