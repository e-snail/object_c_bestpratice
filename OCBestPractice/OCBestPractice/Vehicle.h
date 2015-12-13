//
//  Vehicle.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_Vehicle_h
#define OCBestPractice_Vehicle_h

#import <Foundation/Foundation.h>

//协议类似JAVA的接口。
//定义中不能有变量，

@protocol Vehicle <NSObject>  //<NSObject>表示该协议是NSObject协议的衍生协议，不是NSObject类

@required
- (void) run;

@optional
- (void) fillFuel;

@end

#endif
