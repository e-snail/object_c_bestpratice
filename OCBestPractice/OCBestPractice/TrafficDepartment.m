//
//  TrafficDepartment.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrafficDepartment.h"

@implementation TrafficDepartment

@synthesize vehicleDelegation;

- (void)doSomethingWihtVehicle:(id<Vehicle>)vehicle {
    [vehicleDelegation run];
    NSLog(@"TrafficDepartment do something with Vehicle");
}

- (void) doSomething {
    NSLog(@"TrafficDepartment do something with no Vehicle or default vehicle");
    if (vehicleDelegation != nil) {
        [vehicleDelegation run];
    }
}

@end