//
//  ViewModel.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 7/6/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "ViewModel.h"

@interface ViewModel()

//h文件设置成readonly的属性,可以m文件中设置成readwrite,便于此属性在m文件内部使用
@property (readwrite, nonatomic, copy) NSString *title;
@property (readwrite, nonatomic, copy) NSString *content;

@end

@implementation ViewModel

- (void)requestData
{
    __weak __typeof(self)weakSelf = self;
    
    //网络请求
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void)
                   {
                       __strong __typeof(weakSelf)strongSelf = weakSelf;
                       strongSelf.title = @"请求数据返回标题";
                       strongSelf.content = @"请求数据返回内容";
                   });
}

@end