//
//  Engine.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"

@implementation Engine

@synthesize brand;
@synthesize engineComponent;

- (id) copyWithZone:(NSZone *)zone {
    Engine *copyEngine = [[[self class] allocWithZone:zone] init];
    
    //do something to copy Engine
    
    return copyEngine;
    
}

- (NSString *) description
{
    
    NSString *desc = [NSString stringWithFormat:@"Engine with branch %@", brand];
    return desc;
}

@end