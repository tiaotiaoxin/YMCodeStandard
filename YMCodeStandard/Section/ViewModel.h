//
//  ViewModel.h
//  YMCodeStandard
//
//  Created by 涛 陈 on 7/6/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewModel : NSObject

@property (readonly, nonatomic, strong) NSString *title;

- (void)requestData;

@end
