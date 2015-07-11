//
//  CustomView.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/29/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "Masonry.h"

#import "CustomView.h"

@interface CustomView()

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation CustomView

- (instancetype)init
{
		self = [super init];
		if (!self) return nil;
		
		[self addSubview:self.titleLabel];
		[self addSubview:self.imageView];
		
		return self;
}

- (void)layoutSubviews
{
		[super layoutSubviews];
		
		UIEdgeInsets padding = UIEdgeInsetsMake(20, 20, 20, 20);
		[self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
				make.top.equalTo(self).with.offset(padding.top);
				make.left.equalTo(self).with.offset(padding.left);
				make.bottom.equalTo(self).with.offset(-padding.bottom);
				make.right.equalTo(self).with.offset(-padding.right);
		}];
		
		//UIImageView UIButton这类可以设置图片的控件,当控件中已经设置了图片时,如果不明示设置它的大小,则控件默认使用图片大小
		[self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
				make.centerX.equalTo(self);
				make.centerY.equalTo(self);
		}];
}

#pragma mark - getters and setters

- (UIView *)titleLabel
{
		if (_titleLabel == nil) {
				_titleLabel  = [[UILabel alloc] init];
				_titleLabel.backgroundColor = [UIColor blueColor];
		}
		
		return _titleLabel;
}

- (void)setTitle:(NSString *)title
{
		self.titleLabel.text = title;
}

- (UIImageView *)imageView
{
		if (_imageView == nil) {
				_imageView = [[UIImageView alloc] init];
				
				//在有玉米框架的情况下 [UIImage imageNamed:@"test"]替换成kYMImageNamed(@"test")
				_imageView.image = [UIImage imageNamed:@"test"];
		}
		
		return _imageView;
}

@end
