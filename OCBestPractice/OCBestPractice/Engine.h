//
//  Engine.h
//  OCBestPractice
//
//  Created by 吴永波 on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@class EngineComponent;

@interface Engine : NSObject <NSCopying>

//使用@property定义属性，自动生成setter/getter方法
@property (readonly, atomic) NSString * brand;
@property (readwrite, atomic, retain) EngineComponent * engineComponent;

- (NSString *) description;

@end
