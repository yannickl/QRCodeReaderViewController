Pod::Spec.new do |s|
  s.name                  = 'QRCodeReaderViewController'
  s.version               = '4.0.2'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.summary               = 'Simple QRCode reader for iOS 7 and over'
  s.description           = 'The `QRCodeReaderViewController` is a simple QRCode and bar code reader/scanner based on the `AVFoundation` framework from Apple. It aims to replace ZXing or ZBar for iOS 7 and over.'
  s.homepage              = 'https://github.com/YannickL/QRCodeReaderViewController'
  s.authors               = { 'Yannick Loriot' => 'contact@yannickloriot.com' }
  s.social_media_url      = "https://twitter.com/yannickloriot"
  s.source                = { :git => 'https://github.com/yannickl/QRCodeReaderViewController.git',
                              :tag => s.version.to_s }
  s.requires_arc          = true
  s.source_files          = ['QRCodeReaderViewController/*.{h,m}']
  s.framework             = 'AVFoundation'
  s.ios.deployment_target = '7.0'
end
