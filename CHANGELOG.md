# Change log

## [Version 4.0.2](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/4.0.2)
Released on 2016-09-23.

- [FIX] Only sets AVMetadataObjectTypes that are available [#24](https://github.com/yannickl/QRCodeReaderViewController/issues/24)

## [Version 4.0.1](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/4.0.1)
Released on 2015-11-07.

- [FIX] Switch camera and toggle button under status bar [#14](https://github.com/yannickl/QRCodeReaderViewController/issues/14)

## [Version 4.0.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/4.0.0)
Released on 2015-11-02.

- [ADD] Availability to disable the switch camera button.
- [ADD] Torch button
- [ADD] `initWithCancelButtonTitle:codeReader:startScanningAtLoad:showSwitchCameraButton:showTorchButton:` method in the `QRCodeReaderViewController`
- [ADD] `isTorchAvailable` and `toggleTorch` methods in the `QRCodeReader`

## [Version 3.5.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/3.5.0)
Released on 2015-07-10.

- [UPDATE] Make the `defaultDeviceInput`, the `frontDeviceInput` and the `metadataOutput` properties accessible in read-only mode

## [Version 3.4.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/3.4.0)
Released on 2015-05-24.

- [ADD] init param to delay the start of scanning if necessary

## [Version 3.3.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/3.3.0)
Released on 2015-04-15.

- [ADD] `running` property

## [Version 3.2.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/3.2.0)
Released on 2015-03-05.

- [ADD] `supportsMetadataObjectTypes` method

## [Version 3.1.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/3.1.0)
Released on 2015-03-01.

- [REFACTORING] Move orientation method to the appropriate object

## [Version 3.0.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/3.0.0)
Released on 2015-02-28.

- [REFACTORING] Split the `QRCodeReaderViewController` and `QRCodeReader`

## [Version 2.0.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/2.0.0)
Released on 2014-11-15.

- [ADD] Front camera supports
- [ADD] Overlay view

## [Version 1.0.0](https://github.com/yannickl/QRCodeReaderViewController/releases/tag/1.0.0)
Released on 2014-07-29.

- Initialize with cancel button title
- `isAvailable` method
- Supports only the default camera
- Supports only `AVMetadataObjectTypeQRCode`
- Cocoapods supports
