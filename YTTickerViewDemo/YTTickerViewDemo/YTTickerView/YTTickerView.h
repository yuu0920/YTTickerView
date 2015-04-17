//
//  YTTickerView.h
//
//  Created by YuuTanimura
//  Copyright (c) 2015年 YuuTanimura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YTTickerView : UIView
@property (nonatomic) NSString* message;
@property (nonatomic) NSTimeInterval speed;

- (instancetype)initWithFrame:(CGRect)frame message:(NSString*)message;
- (instancetype)initWithMessage:(NSString*)message;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setMessageFont:(UIFont *)messageFont;
- (void)setMessageColor:(UIColor *)messageColor;
- (void)start;
- (void)stop;

@end
