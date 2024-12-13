Pod::Spec.new do |s|

  s.name         = 'AWSCore-WM'
  s.version      = '2.38.0'
  s.summary      = 'Amazon Web Services SDK for iOS.'

  s.description  = 'The AWS SDK for iOS provides a library, code samples, and documentation for developers to build connected mobile applications using AWS.'

  s.homepage     = 'http://aws.amazon.com/mobile/sdk'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { "huhangwei" => "huhangwei@gmail.com" }
  s.platform     = :ios, '12.0'

  s.source       = { :git => 'https://github.com/huhwei920/AWSCore-WM.git',
                     :tag => s.version}

  s.frameworks   = 'CoreGraphics', 'UIKit', 'Foundation', 'SystemConfiguration', 'Security'
  s.libraries    = 'z', 'sqlite3'
  s.requires_arc = true

  s.source_files = 'AWSCore-WM/AWSCore/*.{h,m}', 'AWSCore-WM/AWSCore/**/*.{h,m}', 'AWSCore-WM/AWSCore/Logging/Extensions/*.swift'
  s.private_header_files = 'AWSCore-WM/AWSCore/XMLWriter/**/*.h', 'AWSCore-WM/AWSCore/FMDB/AWSFMDatabase+Private.h', 'AWSCore-WM/AWSCore/Fabric/*.h', 'AWSCore-WM/AWSCore/Mantle/extobjc/*.h', 'AWSCore-WM/AWSCore/CognitoIdentity/AWSCognitoIdentity+Fabric.h'
  s.resource_bundle = { 'AWSCore-WM' => ['AWSCore-WM/AWSCore/PrivacyInfo.xcprivacy']}
end
