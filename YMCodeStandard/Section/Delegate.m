//
//  Delegate.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/18/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "Delegate.h"

@interface Delegate()
<
NSURLConnectionDelegate,
NSCopying
>

//如果只有单个时候Delegate
//@interface Delegate() <NSURLConnectionDelegate>

@end

@implementation Delegate

- (void)targetDelegate
{
	if (_delegate && [_delegate respondsToSelector:@selector(codeShouldCopy:)]) {
		[_delegate codeShouldCopy:self];
	}
}

@end
