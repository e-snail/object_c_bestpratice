//
//  TrafficDepartment.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_TrafficDepartment_h
#define OCBestPractice_TrafficDepartment_h

#import <Foundation/Foundation.h>
#import "Vehicle.h"

@interface TrafficDepartment : NSObject

@property (weak) id <Vehicle> vehicleDelegation;  //定义协议变量

- (void) doSomethingWihtVehicle: (id<Vehicle>) vehicle;

- (void) doSomething;

@end

#endif
