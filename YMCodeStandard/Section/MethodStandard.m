//
//  MethodStandard.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/18/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "MethodStandard.h"

@interface MethodStandard()

//- (void)privateMethod;//私有方法就不需要声明

@end

@implementation MethodStandard

//如果需要实现dealloc方法的话,dealloc方法排第一位,init方法排第二位,否则init方法排第一位
- (void)dealloc
{
		
}

//初始化方法规范
- (instancetype)init
{
		self = [super init];
		if (!self) return nil;
		
		NSDictionary *dic = [[NSDictionary alloc] init]; //初始化使用此格式
		//NSDictionary *dic2 = [NSDictionary new];不要使用此方式初始化
  
		return self;//除非方法体中只有一行return语句,否则return语句前空一行
}


//私有方法,不需要在.m的@interface中声明方法了.
- (void)privateMethod
{
}


- (void)useIf
{
		//if语句格式
		if (YES) {
				//do something
		}
		else {
		  //do something
		}
}

- (void)useFor
{
		for (int i = 0; i < 10; i++) {
				//do something
		}
		//括号体之后要空一行
}


- (void)useSwitch
{
		switch (1) {
				case 1:
						//do something
						break;
      
				case 2: {//如果实现内容多的话使用括号,但尽量避免内容过多,可以代码封装成方法
						//do something
						break;
				}
      
				default:
						break;
		}
}



//单例模式规范
//+ (instancetype)sharedInstance
//{
//		YM_DEFINE_SHARED_INSTANCE_USING_BLOCK(^ {
//				return [[self alloc] init];
//		})
//}

@end
