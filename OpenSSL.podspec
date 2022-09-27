Pod::Spec.new do |s|
    s.name             = 'OpenSSL'
    s.version          = '3.0.2'
    s.summary          = 'OpenSSL'

    s.description      = 'OpenSSL 3.0.2'

    s.homepage         = 'https://github.com/astmnk/specs'
    s.authors = { 'Asti Manuka' => 'asti.manuka@gmail.com' }
    s.license          = 'MIT'
    s.source           = { :git => 'https://github.com/astmnk/specs.git', :tag => s.version.to_s }

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    # s.watchos.deployment_target = '2.0'
    s.tvos.deployment_target = '13.0'
    s.default_subspec = 'OpenSSL'
    s.static_framework = true
    s.subspec 'OpenSSL' do |openssl|
        openssl.vendored_frameworks = 'Libssl.xcframework', 'Libcrypto.xcframework'
    end
end
