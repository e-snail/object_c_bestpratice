//
//  Tire.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_Tire_h
#define OCBestPractice_Tire_h

#import <Foundation/Foundation.h>

@interface Tire : NSObject

@property (readwrite, atomic) NSInteger *tireIndex;

- (NSString *) description;

@end

#endif
