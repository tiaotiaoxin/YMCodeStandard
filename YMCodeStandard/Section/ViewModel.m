//
//  ViewModel.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 7/6/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

- (void)requestData
{
		__weak __typeof(self)weakSelf = self;
		
		//网络请求
		dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC));
		dispatch_after(popTime, dispatch_get_main_queue(), ^(void)
		{
				__strong __typeof(weakSelf)strongSelf = weakSelf;
				[strongSelf setTitle:@"测试标题"];
		});
}

#pragma mark - getters and setters

- (void)setTitle:(NSString *)title
{
		_title = title;
}

@end
