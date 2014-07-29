Pod::Spec.new do |s|
  s.name                  = 'QRCodeReaderViewController'
  s.version               = '1.0.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.summary               = 'Simple QRCode reader for iOS 7 or over'
  s.description           = 'The `QRCodeReaderViewController` is a simple QRCode Reader/Scanner based on the `AVFoundation` framework from Apple. It aims to replace ZXing or ZBar for iOS 7 or over.'
  s.homepage              = 'http://yannickl.github.io/QRCodeReaderViewController/'
  s.authors               = { 'Yannick Loriot' => 'http://yannickloriot.com' }
  s.source                = { :git => 'https://github.com/YannickL/QRCodeReaderViewController.git',
                              :tag => s.version.to_s }
  s.requires_arc          = true
  s.source_files          = ['QRCodeReaderViewController/*.{h,m}']
  s.framework             = 'AVFoundation'
  s.ios.deployment_target = '7.0'
end
