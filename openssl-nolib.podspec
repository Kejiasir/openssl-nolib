Pod::Spec.new do |s|
  s.name         = "openssl-nolib"
  s.version      = "0.0.2.#{("a".."z").to_a.index 'a'}"
  s.summary      = "OpenSSL for iOS and OS X"
  s.description  = "This is the openssl encryption library for iOS and macOS, but does not include the two compiled libcrypto.a and libssl.a files."
  s.homepage     = "https://github.com/Kejiasir/openssl-nolib"
  s.license	     = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE.txt' }
  s.source       = { :git => "https://github.com/Kejiasir/openssl-nolib.git"}
  s.authors       =  {'ArvinYang' => 'arvinSir.86.@gmail.com'}

  s.requires_arc = false
  s.default_subspec = 'Static'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.9'

  s.subspec 'Static' do |sp|
    sp.ios.deployment_target = '6.0'
    sp.ios.source_files        = 'ios/include/openssl/**/*.h'
    sp.ios.public_header_files = 'ios/include/openssl/**/*.h'
    sp.ios.header_dir          = 'openssl'

    sp.osx.deployment_target = '10.9'
    sp.osx.source_files        = 'macos/include/openssl/**/*.h'
    sp.osx.public_header_files = 'macos/include/openssl/**/*.h'
    sp.osx.header_dir          = 'openssl'
  end

  # s.subspec 'Framework' do |sp|
  #   sp.ios.deployment_target = '8.0'
  #   sp.ios.vendored_frameworks = 'Frameworks/ios/OpenSSL.framework'
  #   sp.osx.deployment_target = '10.9'
  #   sp.osx.vendored_frameworks = 'Frameworks/macos/OpenSSL.framework'
  # end
end
