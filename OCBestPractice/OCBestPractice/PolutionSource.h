//
//  PolutionSource.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_PolutionSource_h
#define OCBestPractice_PolutionSource_h

#import <Foundation/Foundation.h>

@protocol PolutionSource <NSObject>

@required
- (void) makePolution;

@optional
- (NSInteger) calculatePolution;

@end

#endif
