//
//  CThing2.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "CategoryThing.h"

@implementation CategoryThing(CThing2)

- (void) setThing2:(NSInteger)thing2 {
    self.thing2 = thing2;
}

- (NSInteger) thing2 {
    return (thing2);
}

@end