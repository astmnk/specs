Pod::Spec.new do |s|
    s.name             = 'FFmpeg'
    s.version          = '5.1'
    s.summary          = 'FFmpeg'

    s.description      = 'FFmpeg for iOS/tvOS/OSX'

    s.homepage         = 'https://github.com/astmnk/specs'
    s.authors = { 'Asti Manuka' => 'asti.manuka@gmail.com' }
    s.license          = 'MIT'
    s.source           = { :git => 'https://github.com/astmnk/specs.git', :tag => s.version.to_s }

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '13.0'
    s.default_subspec = 'FFmpeg'
    s.static_framework = true
    s.source_files = 'FFmpeg/**/*.{h,c,m}'
    s.subspec 'FFmpeg' do |ffmpeg|
        ffmpeg.libraries   = 'bz2', 'z', 'iconv', 'xml2'
        ffmpeg.vendored_frameworks = 
        'Libavcodec.xcframework',
        'Libavfilter.xcframework',
        'Libavformat.xcframework',
        'Libavutil.xcframework',
        'Libswresample.xcframework',
        'Libswscale.xcframework'
        ffmpeg.dependency 'OpenSSL'
    end
end
