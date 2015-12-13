//
//  Car.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_Car_h
#define OCBestPractice_Car_h

#import <Foundation/Foundation.h>
#include "Vehicle.h"
#include "PolutionSource.h"

@class Engine;
@class Tire;

@interface Car : NSObject <Vehicle, PolutionSource>
{
    Engine *engine;
    NSMutableArray *tires;
}

//自定义 setter/getter的方法
- (void) setEngine: (Engine *) newEngine;
- (Engine *) engine;
- (void) setTire: (Tire*) tire atIndex: (int) index;
- (Tire *) getTireAtIndex: (int) index;

- (void) print;

@end

#endif
