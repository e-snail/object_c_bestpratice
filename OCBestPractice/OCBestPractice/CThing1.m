//
//  CThing1.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

@implementation CategoryThing(CThing1)

- (void) setThing1:(NSInteger)thing1 {
    self.thing1 = thing1;
}

- (NSInteger) thing1 {
    return (thing1);
}

@end