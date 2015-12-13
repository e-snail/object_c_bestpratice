//
//  EngineComponent.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EngineComponent.h"

@implementation EngineComponent

- (id) init {
    self = [super init];
    if (self) {
        self.componentName = @"Default Component Name";
    }
    
    return (self);
}

//- (id) initWithComponentName:(NSString *) compName {
//    [self init];
//    self.componentName = compName;
//}

@synthesize componentName;

- (NSString *) description
{
    return (@"This is an EngineComponent");
}

@end