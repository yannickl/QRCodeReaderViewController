Pod::Spec.new do |s|
  s.name                  = 'QRCodeReaderViewController'
  s.version               = '2.0.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.summary               = 'Simple QRCode reader for iOS 7 and over'
  s.description           = 'The `QRCodeReaderViewController` is a simple QRCode Reader/Scanner based on the `AVFoundation` framework from Apple. It aims to replace ZXing or ZBar for iOS 7 and over.'
  s.homepage              = 'https://github.com/YannickL/QRCodeReaderViewController'
  s.authors               = { 'Yannick Loriot' => 'http://yannickloriot.com' }
  s.source                = { :git => 'https://github.com/yannickl/QRCodeReaderViewController.git',
                              :tag => s.version.to_s }
  s.requires_arc          = true
  s.source_files          = ['QRCodeReaderViewController/*.{h,m}']
  s.framework             = 'AVFoundation'
  s.ios.deployment_target = '7.0'
end
