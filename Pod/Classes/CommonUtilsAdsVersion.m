//  Created by Karen Lusinyan on 14/04/15.
//  Copyright (c) 2015 Karen Lusinyan. All rights reserved.

#import "CommonUtilsAdsVersion.h"

@implementation CommonUtilsAdsVersion

+ (void)load
{
    static dispatch_once_t pred = 0;
    dispatch_once(&pred, ^{
        NSLog(@"LibCommonUtilsAds [%@]", kLibVersion);
    });
}

@end
