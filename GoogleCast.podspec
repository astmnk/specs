Pod::Spec.new do |s|
    s.name             = 'google-cast'
    s.version          = '4.7.0'
    s.summary          = 'GoogleCast'

    s.description      = 'GoogleCast 4.7.0'

    s.homepage         = 'https://github.com/astmnk/specs'
    s.authors = { 'Asti Manuka' => 'asti.manuka@gmail.com' }
    s.license          = 'MIT'
    s.source           = { :git => 'https://github.com/astmnk/specs.git', :tag => s.version.to_s }

    s.ios.deployment_target = '12.0'
    s.static_framework = true
    s.vendored_frameworks = 'google-cast.xcframework'
end
