//
//  NSString+NumberConvenience.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)

- (NSNumber *) lengthAsNumber {
    NSUInteger length = [self length];
    return ([NSNumber numberWithUnsignedInt: length]);
}

@end