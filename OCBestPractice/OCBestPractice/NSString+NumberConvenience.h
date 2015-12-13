//
//  NSString+NumberConvenience.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_NSString_NumberConvenience_h
#define OCBestPractice_NSString_NumberConvenience_h

#import <Foundation/Foundation.h>

//类别 对已有类的方法扩展（不能扩展成员变量）

@interface NSString (NumberConvenience)

- (NSNumber*) lengthAsNumber;

@end


#endif
