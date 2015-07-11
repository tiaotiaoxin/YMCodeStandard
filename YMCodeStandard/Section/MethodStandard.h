//
//  MethodStandard.h
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/18/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MethodStandard : NSObject

//方法名首字母小写
//方法名不要使用缩写,但方法参数名可以使用缩写
//使用模态动词时不要使用’do’或者’does'
//避免使用one, two,...,作为参数名
//如果返回一个接收者的属性,则不需要”get”这类的动词
//不要使用’And’来连接参数名
//返回值为BOOL时,名称使用判断动词is开头
//-与()之间要空格

/**
 *  方法描述
 *  @param msg         参数说明
 *  @param theInterval 参数说明
 *
 *  @return 返回值说明
 */
- (NSInteger)compareWithMessage:(NSString *)msg
											 interval:(float)theInterval;//冒号要对齐,相应方法调用也遵守此规则

- (void)show:(float)theInterval
		verylongKeyword:(NSString *)keyword
		evenLongerKeyword:(float)theInterval;//当第一个关键字比其它的短时,保证下一行至少一个Tab的缩进,相应方法调用也遵守此规则

@end
