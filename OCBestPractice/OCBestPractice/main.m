//
//  main.m
//  OCBestPractice
//
//  Created by Wilbur.Wu on 15/12/13.
//  Copyright (c) 2015年 Wilbur.Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "NSString+NumberConvenience.h"
#import "TrafficDepartment.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // NSLog输出变量
        // 字符串 %@
        
        // 基本数据类型
        // 字符串
        //
        NSString *helloOC = @"Hello Object-C";
        NSLog(@"My string is %@", helloOC);
        
        // 可变字符串
        //
        NSLog(@"-----------------------");
        NSMutableString *mutableString;
        mutableString = [NSMutableString stringWithCapacity:40];
        [mutableString appendString: @"Hell NSMutableString"];
        [mutableString appendFormat: @",appendFormat %d", 33];
        NSLog(@"mutable string is %@", mutableString);
        
        // 集合类-数组
        // NSArray末尾添加nil作为结束符
        NSLog(@"-----------------------");
        NSArray *nsArray;
        nsArray = [NSArray arrayWithObjects: @"One", @"Two", @"Three", nil];
        NSLog(@"NSArray is %@", nsArray);
        NSUInteger arrayCount = [nsArray count];
        for (int i=0; i<arrayCount; i++) {
            NSLog(@"NSArray index %d is %@", i, [nsArray objectAtIndex: i]);
        }
        
        // 集合类-可变数组
        //
        NSLog(@"-----------------------");
        NSMutableArray *mutableArray;
        mutableArray = [NSMutableArray arrayWithCapacity: 20];
        [mutableArray addObjectsFromArray: nsArray];
        NSLog(@"mutable array is %@", mutableArray);
        [mutableArray removeLastObject];
        NSUInteger mutableArrayCount = [mutableArray count];
        for (int i=0; i<mutableArrayCount; i++) {
            NSLog(@"MutableArray index %d is %@", i, [mutableArray objectAtIndex: i]);
        }
        
        // 枚举
        //
        NSLog(@"-----------------------");
        NSEnumerator *enumerator;
        enumerator = [mutableArray objectEnumerator];
        id enumID;
        int enumIndex = 0;
        while (enumID = [enumerator nextObject]) {
            NSLog(@"enum index %d is %@", enumIndex++, enumID);
        }
        for (NSString *string in mutableArray) {
            NSLog(@"enum %@", string);
        }
        
        // 集合类-字典
        NSLog(@"-----------------------");
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"Value1", @"Key1",
                                    @"Value2", @"Key2",
                                    @"Value3", @"Key3",
                                    nil];
        NSEnumerator *dictEnum = [dictionary objectEnumerator];
        id dictEnumId;
        while (dictEnumId = [dictEnum nextObject]) {
            NSLog(@"dict enum %@", dictEnumId);
        }
        
        
        // 集合类-可变字典
        //
        NSLog(@"-----------------------");
        NSMutableDictionary *mutableDict = [NSMutableDictionary
                                            dictionaryWithDictionary: @{
                                                                        @"Value1": @"Key1",
                                                                        @"Value2": @"Key2",
                                                                        @"Value3": @"Key3"}];
        [mutableDict addEntriesFromDictionary: dictionary];
        NSEnumerator *mutableDictEnum = [mutableDict keyEnumerator];
        //?????? 输出的key-value顺序有问题？？？？？？
        id mutDictEnumId;
        while (mutDictEnumId = [mutableDictEnum nextObject]) {
            NSLog(@"mutable dict keys: %@", mutDictEnumId);
        }
        
        [mutableDict setObject: @"Value3333" forKey: @"Key3"];
        NSLog(@"Key3-%@", [mutableDict objectForKey: @"Key3"]);
        
        // 数据类  NSNumber:  封装基本数据类型
        //
        NSLog(@"-----------------------");
        NSNumber *nsNumber;
        nsNumber = [NSNumber numberWithBool: YES];
        NSLog(@"NSNumber bool %d", [nsNumber boolValue]);
        nsNumber = [NSNumber numberWithChar: 'C'];
        NSLog(@"NSNumber char %c", [nsNumber charValue]);
        
        //  数据类 NSRect/NSPoint/NSSize
        //
        NSLog(@"-----------------------");
        NSRect nsRect = NSMakeRect(1, 1, 20, 40);
        //NSLog(@"Rect is %f", nsRect.size);
        
        //  数据类  NSValue，可以包装任意值
        //
        NSLog(@"-----------------------");
        NSValue *nsValue = [NSValue valueWithBytes:&nsRect objCType: @encode(NSRect)];
        NSLog(@"RectValue %@", nsValue);
        NSRect *anotherRect;
        [nsValue getValue: &anotherRect];
        
        // 类别categories
        //
        NSMutableDictionary *categoryDict = [NSMutableDictionary dictionary];
        [categoryDict setObject:[@"Hello OC" lengthAsNumber] forKey:@"Hello OC"];
        [categoryDict setObject:[@"Hello IOS" lengthAsNumber] forKey:@"Hello IOS"];
        
        // Car/Engine/Tire类
        NSLog(@"-----------------------");
        Car *car = [Car init];
        TrafficDepartment *trafficDepartment = [TrafficDepartment init];
        trafficDepartment.vehicleDelegation = car;
        [trafficDepartment doSomething];
    }
    return 0;
}
