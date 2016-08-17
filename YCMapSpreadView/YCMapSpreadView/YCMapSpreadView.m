//
//  YCMapSpreadView.m
//  YCMapSpreadView
//
//  Created by tm on 16/8/16.
//  Copyright © 2016年 tm. All rights reserved.
//

#import "YCMapSpreadView.h"
#import "NSBundle+YCMapSpreadView.h"

@interface YCMapSpreadView ()
@property (strong, nonatomic) UIImageView *spreadImageView;
@property (strong, nonatomic) UIImageView *outImageView;
@property (strong, nonatomic) UIImageView *inImageView;
@end

@implementation YCMapSpreadView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupLocView];
        _spreadImageView.frame = CGRectMake( -frame.size.width / 2, -frame.size.height / 2, frame.size.width * 2, frame.size.height * 2);
        _outImageView.frame = CGRectMake( 0, 0, frame.size.width / 2.5, frame.size.height / 2.5);
        _outImageView.center = _spreadImageView.center;
        _inImageView.frame = CGRectMake( 0, 0, frame.size.width / 4, frame.size.height / 4);
        _inImageView.center = _outImageView.center;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupLocView];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _spreadImageView.frame = CGRectMake( -self.bounds.size.width / 2, -self.bounds.size.height / 2, self.bounds.size.width * 2, self.bounds.size.height * 2);
    _outImageView.frame = CGRectMake( 0, 0, self.bounds.size.width / 2.5, self.bounds.size.height / 2.5);
    _outImageView.center = _spreadImageView.center;
    _inImageView.frame = CGRectMake( 0, 0, self.bounds.size.width / 4, self.bounds.size.height / 4);
    _inImageView.center = _outImageView.center;
}

- (void)setupLocView {
    //小红点添加关键帧动画
    CAKeyframeAnimation* anim=[CAKeyframeAnimation animation];
    anim.keyPath=@"transform.scale";
    anim.values=@[@(0.70), @(0.80),@(0.90),@(1),@(0.90), @(0.80),@(0.70)];
    anim.duration = 6;
    anim.removedOnCompletion = NO;
    anim.repeatCount = MAXFLOAT;
    //最外层view缩放
    CAKeyframeAnimation* animscale=[CAKeyframeAnimation animation];
    animscale.keyPath=@"transform.scale";
    animscale.values=@[@(0.01), @(0.4), @(0.70), @(0.80),@(0.90),@(1)];
    //    animin.keyTimes = @[@(0), @(0.1), @(0.3), @(0.5)];
    animscale.duration=3;
    animscale.removedOnCompletion = NO;
    animscale.repeatCount = MAXFLOAT;
    //透明度变化
    CAKeyframeAnimation* animin=[CAKeyframeAnimation animation];
    animin.keyPath=@"opacity";
    animin.values=@[@(1), @(0.9), @(0.5), @(0.2),@(0.02),@(0.01)];
    //    animin.keyTimes = @[@(0), @(0.1), @(0.3), @(0.5)];
    animin.duration=3;
    animin.removedOnCompletion = NO;
    animin.repeatCount = MAXFLOAT;
    
    _spreadImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _spreadImageView.image = [NSBundle spread_circle_Image];
    [self addSubview:_spreadImageView];
    [_spreadImageView.layer addAnimation:animscale forKey:nil];
    [_spreadImageView.layer addAnimation:animin forKey:nil];
    
    _outImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _outImageView.image = [NSBundle out_circle_Image];
    [self addSubview:_outImageView];
    
    _inImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _inImageView.image = [NSBundle in_circle_Image];
    [_inImageView.layer addAnimation:anim forKey:nil];
    [self addSubview:_inImageView];
    
}

@end
