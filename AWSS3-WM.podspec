Pod::Spec.new do |s|
  s.name         = 'AWSS3-WM'
  s.version      = '2.36.6'
  s.summary      = 'Amazon Web Services SDK for iOS.'

  s.description  = 'The AWS SDK for iOS provides a library, code samples, and documentation for developers to build connected mobile applications using AWS.'

  s.homepage     = 'http://aws.amazon.com/mobile/sdk'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { "huhangwei" => "huhangwei@gmail.com" }
  s.platform     = :ios, '12.0'
  s.source       = { :git => 'https://github.com/huhwei920/AWSS3-WM.git',
                     :tag => s.version}
  s.requires_arc = true
  s.dependency 'AWSCore-WM', '2.36.6'
  s.source_files = 'AWSS3-WM/AWSS3/*.{h,m}'
  s.resource_bundle = { 'AWSS3-WM' => ['AWSS3-WM/AWSS3/PrivacyInfo.xcprivacy']}
end
