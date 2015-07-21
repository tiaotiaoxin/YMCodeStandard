//
//  VariableAndConstant.h
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/18/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

//实体命名规范(统一以Entity结尾)
//XXXEntity

#import <Foundation/Foundation.h>

@interface VariableAndConstant : NSObject
{
	//NSDictionary *_userInfo; //只要设置@property,这种写法不再使用
}

//所有属性都必须使用@property
//@property要显性说明指针所有权
@property (readonly, nonatomic, strong) NSDictionary *userInfo;

//NSString类型要使用Copy
@property (nonatomic, copy) NSString *userName;

//当变量是形容詡时的getter用法
@property (nonatomic, assign, getter = isFirstLaunch) BOOL firstLaunch;

//整数使用NSInteger
@property (nonatomic, assign) NSInteger number;

//NSInteger to NSString
//NSString *inStr = [NSString stringWithFormat: @"%ld", (long)number];

//BOOL to NSString
//NSString *boolSt = [NSString stringWithFormat:@"%d", theBool]; // Will be 1 or 0.

@end
