//
//  Student.h
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property (nonatomic,copy) NSString *height;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)StudentWithDict:(NSDictionary *)dict;

@end
