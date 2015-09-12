//
//  Person.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        //[self setValuesForKeysWithDictionary:dict];
        self.name = dict[@"name"];
        self.age = dict[@"age"];
    }
    return self;
}
+ (instancetype)PersonWithDict:(NSDictionary *)dict{
    
    return [[self alloc]initWithDict:dict];
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.age forKey:@"age"];
    NSLog(@"调用了encodeWithCoder:方法");
}


// 当从文件中读取一个对象的时候就会调用该方法
// 在该方法中说明如何读取保存在文件中的对象
// 也就是说在该方法中说清楚怎么读取文件中的对象
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
    }
    
    //替代format方法，用语法糖
    NSLog(@"initWithCoder");
    NSArray *array = @[@"",@"",@""];
    NSLog(@"%@",@(array.count));
    NSInteger num = 1213;
    NSLog(@"%@",@(num).stringValue);
    
    return self;
    
    
}
@end

