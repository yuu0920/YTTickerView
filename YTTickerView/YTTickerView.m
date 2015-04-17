//
//  YTTickerView.m
//
//  Created by YuuTanimura
//  Copyright (c) 2015年 YuuTanimura. All rights reserved.
//

#import "YTTickerView.h"

@interface YTTickerView ()
@property (nonatomic) UILabel* messageLabel;
@end

@implementation YTTickerView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame message:(NSString*)message
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
        [self setMessage:message];
        [_messageLabel setFrame:CGRectMake(self.bounds.size.width, _messageLabel.frame.origin.y, _messageLabel.frame.size.width, _messageLabel.frame.size.height)];
    }
    return self;
}


- (instancetype)initWithMessage:(NSString*)message
{
    self = [super init];
    if (self) {
        [self initialize];
        [self setMessage:message];
        [self setFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, _messageLabel.frame.size.height)];
        [_messageLabel setFrame:CGRectMake(self.bounds.size.width, _messageLabel.frame.origin.y, _messageLabel.frame.size.width, _messageLabel.frame.size.height)];
    }
    return self;
}

- (void)initialize
{
    _message = @"";
    _speed = 10;
    _messageLabel = [[UILabel alloc] init];
    [_messageLabel setBackgroundColor:[UIColor clearColor]];
    [_messageLabel setText:_message];
    [_messageLabel setNumberOfLines:1];
    [_messageLabel sizeToFit];
    [self setBackgroundColor:[UIColor clearColor]];
    [self addSubview:_messageLabel];
}

- (void)setMessage:(NSString*)message
{
    _message = message;
    [_messageLabel setText:_message];
    [_messageLabel sizeToFit];
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, _messageLabel.bounds.size.height)];
    [_messageLabel setFrame:CGRectMake(self.bounds.size.width, _messageLabel.frame.origin.y, _messageLabel.frame.size.width, _messageLabel.frame.size.height)];
}

- (void)setSpeed:(NSTimeInterval)speed
{
    [self stop];
    _speed = speed;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
}

- (void)setMessageFont:(UIFont *)messageFont
{
    [_messageLabel setFont:messageFont];
}

- (void)setMessageColor:(UIColor *)messageColor
{
    [_messageLabel setTextColor:messageColor];
}

- (void)start
{
    [UIView animateWithDuration:self.bounds.size.width / _speed delay:0.0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat animations:^{
        [_messageLabel setTransform:CGAffineTransformMakeTranslation(-self.bounds.size.width - _messageLabel.bounds.size.width, 0)];
    } completion:nil];
}

- (void)stop
{
    [_messageLabel setTransform:CGAffineTransformIdentity];
}



@end
