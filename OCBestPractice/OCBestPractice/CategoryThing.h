//
//  CategoryThing.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_CategoryThing_h
#define OCBestPractice_CategoryThing_h

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

@interface CategoryThing : NSObject
{
    NSInteger thing1;
    NSInteger thing2;
}
@end

@interface CategoryThing (CThing1)
    - (void)setThing1:(NSInteger)thing1;
    - (NSInteger)thing1;
@end

@interface CategoryThing (CThing2)
    - (void)setThing2:(NSInteger)thing2;
    - (NSInteger)thing2;
@end

#endif
