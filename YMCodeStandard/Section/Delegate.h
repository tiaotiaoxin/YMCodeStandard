//
//  Delegate.h
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/18/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CodeStandardDelegate <NSObject>

//方法名中最好可以用上时态,这样可以表明回调的时机.可使用did或will
//可以使用should,来询问是否执行
- (BOOL)codeShouldCopy:(id)sender;

@end

@interface Delegate : NSObject

@property (nonatomic, weak) id <CodeStandardDelegate> delegate;

@end
