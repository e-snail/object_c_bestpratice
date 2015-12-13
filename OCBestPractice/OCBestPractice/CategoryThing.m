//
//  CategoryThing.m
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat: @"%d %d", thing1, thing2];
    return (desc);
    
} // description

@end // CategoryThing