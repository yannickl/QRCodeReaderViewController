/*
 * QRCodeReaderViewController
 *
 * Copyright 2014-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#import "QRCodeReaderView.h"

#define SCAN_QRCODE_TEXT_TITLE        @"扫一扫"

#define SCAN_QRCODE_BGCOLOR [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3]

#define SCAN_QRCODE_IMG_LEFT_UP     @"center_qrcode_leftup_img"
#define SCAN_QRCODE_IMG_RIGHT_UP    @"center_qrcode_rightup_img"
#define SCAN_QRCODE_IMG_LEFT_DOWN   @"center_qrcode_leftdown_img"
#define SCAN_QRCODE_IMG_RIGHT_DOWN  @"center_qrcode_rightdown_img"

#define SCAN_QRCODE_IMG_LINE    @"center_qrcode_line_img"

@interface QRCodeReaderView ()

@property (weak, nonatomic) UIView *topViewBG;
@property (weak, nonatomic) UIView *leftViewBG;
@property (weak, nonatomic) UIView *rightViewBG;
@property (weak, nonatomic) UIView *bottomViewBG;

@property (weak, nonatomic) UIImageView *leftUpImageView;
@property (weak, nonatomic) UIImageView *leftDownImageView;
@property (weak, nonatomic) UIImageView *rightUpImageView;
@property (weak, nonatomic) UIImageView *rightDownImageView;

@property (weak, nonatomic) UIImageView *lineImageView;

@property (weak, nonatomic) UILabel *tipLabel;

@end

@implementation QRCodeReaderView

- (id)initWithFrame:(CGRect)frame
{
  if ((self = [super initWithFrame:frame])) {
    [self setupSubViews];
  }

  return self;
}

- (void)setupSubViews{
    
    self.topViewBG = [self createViewBG];
    [self addSubview:self.topViewBG];
    
    self.leftViewBG = [self createViewBG];
    [self addSubview:self.leftViewBG];
    
    self.rightViewBG = [self createViewBG];
    [self addSubview:self.rightViewBG];
    
    self.bottomViewBG = [self createViewBG];
    [self addSubview:self.bottomViewBG];
    
    self.leftUpImageView = [self createImageViewWithImageName:SCAN_QRCODE_IMG_LEFT_UP];
    [self addSubview:self.leftUpImageView];
    
    self.leftDownImageView = [self createImageViewWithImageName:SCAN_QRCODE_IMG_LEFT_DOWN];
    [self addSubview:self.leftDownImageView];
    
    self.rightUpImageView = [self createImageViewWithImageName:SCAN_QRCODE_IMG_RIGHT_UP];
    [self addSubview:self.rightUpImageView];
    
    self.rightDownImageView = [self createImageViewWithImageName:SCAN_QRCODE_IMG_RIGHT_DOWN];
    [self addSubview:self.rightDownImageView];
    
    self.lineImageView = [self createImageViewWithImageName:SCAN_QRCODE_IMG_LINE];
    [self addSubview:self.lineImageView];
    
    UILabel *tipLabel = [[UILabel alloc] init];
    [tipLabel setNumberOfLines:0];
    [tipLabel setText:@"将二维码图案放在取景框内，即可自动扫描"];
    [tipLabel setTextColor:[UIColor whiteColor]];
    [tipLabel setBackgroundColor:[UIColor clearColor]];
    [tipLabel setTextAlignment:NSTextAlignmentCenter];
    [tipLabel setFont:[UIFont systemFontOfSize:14]];
    self.tipLabel = tipLabel;
    [self addSubview:self.tipLabel];
    
}

- (UIView *)createViewBG{
    UIView *viewBG = [[UIView alloc] init];
    [viewBG setBackgroundColor:SCAN_QRCODE_BGCOLOR];
    return viewBG;
}

- (UIImageView *)createImageViewWithImageName:(NSString *)imageName{
    UIImageView *imgView = [[UIImageView alloc] init];
    [imgView setImage:[UIImage imageNamed:imageName]];
    return imgView;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    self.topViewBG.frame = CGRectMake(40, 0, width-40, 40);
    self.leftViewBG.frame = CGRectMake(0, 0, 40, width);
    self.rightViewBG.frame = CGRectMake(width-40, 40, 40, width);
    self.bottomViewBG.frame = CGRectMake(40, width - 40, width - 80, height- width + 40);
    
    self.leftUpImageView.frame = CGRectMake(37, 37, 30, 30);
    self.leftDownImageView.frame = CGRectMake(37, width - 67, 30, 30);
    self.rightUpImageView.frame = CGRectMake(width - 67, 37, 30, 30);
    self.rightDownImageView.frame = CGRectMake(width - 67, width - 67, 30, 30);
    
    self.lineImageView.frame = CGRectMake(40, 40, width - 80, 2);
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionRepeat animations:^{
        [self.lineImageView setFrame:CGRectMake(40, width - 45, width - 80, 2)];
    } completion:^(BOOL finished) {
        
    }];
    
    
    self.tipLabel.frame = CGRectMake(10, width-25, width-20, 60);

    
}


@end
