//
//  VariableAndConstant.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/18/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "VariableAndConstant.h"

// 声明顺序 常量、静态局部变量 / 枚举 / 宏

//常量、静态局部变量使用规范,以k字母开头,使用模板如下
const static NSString *kAFNetworkingLockName = @"test";

const NSString *kAFURLResponseSerializationErrorDomain = @"test";

static NSString *kAppId;

@interface VariableAndConstant()

//枚举规范
typedef enum {
	AppCellForNormalStyle = 0,
	AppCellForRanklStyle = 1,
} AppCellStyle;

//宏:使用全大写字母并且用下划线分割单词(编译器定义的宏名首尾都有双下划线。如:__MACH__)
#define ROTATION_ANGLE M_PI_2

@end

//@synthesize 不使用这种声明

@implementation VariableAndConstant

- (void)useBOOL
{
	//BOOL类型:不要直接将BOOL值与YES比较
	BOOL hided = YES;
	
	if (hided) {
	}
	
	if (hided == NO) {
	}
}

@end