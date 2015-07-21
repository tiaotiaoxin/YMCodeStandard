//命名
//使用驼峰命名法则

//#import与#include
//当包含一个使用Objective-C、Objective-C++的头文件时,使用#import。
//当包含一个使用标准C、C++头文件时,使用#include。

//先导入框架,再导入相应类文件
#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
//再导入第三方库
#import "Masonry.h"
//最后导入自身项目文件
#import "AppDelegate.h"