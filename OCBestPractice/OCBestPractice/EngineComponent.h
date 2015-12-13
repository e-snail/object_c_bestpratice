//
//  EngineComponent.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#ifndef OCBestPractice_EngineComponent_h
#define OCBestPractice_EngineComponent_h

@interface EngineComponent : NSObject
{
    NSString * componentName;
}

@property (readwrite, atomic) NSString * componentName;

- (NSString * ) description;

@end

#endif
