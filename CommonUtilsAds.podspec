Pod::Spec.new do |s|
    s.name         = 'CommonUtilsAds'
    s.version      = '1.0.5'
    s.summary      = 'CommonUtils extension for Ads.'
    s.homepage     = 'https://bitbucket.org/mrklteam/commonutilsads/'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { 'Karen Lusinyan' => 'karen.lusinyan.developerios@gmail.com' }
    s.platform     = :ios, '7.0'
    s.source       = { :git => 'https://mrcararia@bitbucket.org/mrklteam/commonutilsads.git', :tag => s.version.to_s }

    s.requires_arc = true
    s.prefix_header_file = 'Pod/Classes/Pod-Prefix.pch'
    s.source_files = 'Pod/Classes/**/*.{h,m}'

    s.resource_bundles = { 'CommonUtilsAds' => ['Pod/Assets/Images/*.*'] }

    #-------- Pods --------
    s.dependency 'CommonUtils'
    s.dependency 'Google-Mobile-Ads-SDK', '~>7.1.0'

    #-------- Frameworks --------
    s.frameworks = 'AdSupport', 'iAd'
    #---------------------------

    #s.vendored_frameworks = 'GoogleMobileAds'
    s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/Google-Mobile-Ads-SDK/**"' }
end