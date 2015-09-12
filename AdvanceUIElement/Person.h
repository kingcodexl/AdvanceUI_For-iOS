//
//  Person.h
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *age;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)PersonWithDict:(NSDictionary *)dict;

@end
