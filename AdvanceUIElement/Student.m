
//
//  Student.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super initWithDict:dict]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+ (instancetype)StudentWithDict:(NSDictionary *)dict{
    return  [[self alloc]initWithDict:dict];
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.height forKey:@"height"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.height = [aDecoder decodeObjectForKey:@"height"];
    }
    return self;
}
@end
