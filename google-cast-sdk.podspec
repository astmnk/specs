Pod::Spec.new do |s|
    s.name             = 'google-cast-sdk'
    s.version          = '4.6.1'
    s.summary          = 'GoogleCast'
    s.description      = 'GoogleCast 4.6.1'
    s.homepage         = 'https://github.com/astmnk/specs'
    s.authors = { 'Asti Manuka' => 'asti.manuka@gmail.com' }
    s.license          = 'MIT'
    s.source           = { :http => "https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-4.6.1_dynamic.zip", :type => "zip" }
    
    s.ios.deployment_target = "12.0"
    s.preserve_paths       = "GoogleCast.framework"
    s.resources            = "GoogleCast.framework/GoogleCastCoreResources.bundle", "GoogleCast.framework/GoogleCastUIResources.bundle"
    s.vendored_frameworks  = "GoogleCast.framework"
    s.source_files         = 'GoogleCast.framework/Headers/**/*.h'

    s.frameworks = "Accelerate", "AudioToolbox", "AVFoundation", "CFNetwork", "CoreData", "CoreGraphics", "CoreMedia", "CoreText", "Foundation", "MediaAccessibility", "MediaPlayer", "QuartzCore", "Security", "SystemConfiguration", "UIKit"
    s.libraries  = "c++"

    s.dependency "Protobuf", "~> 3.0"

    s.requires_arc = true
    s.static_framework = true
end
