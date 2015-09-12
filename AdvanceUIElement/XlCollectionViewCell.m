//
//  XlCollectionViewCell.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/7.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "XlCollectionViewCell.h"
@interface XlCollectionViewCell()

@end
@implementation XlCollectionViewCell

- (void)setImage:(UIView *)image{
    _image = image;
    
}


//-(UIView *)image{
//    if (!_image) {
//        _image = [[UIView alloc]initWithFrame:self.frame];
//        _image.backgroundColor = [UIColor greenColor];
//        
//    }
//    return _image;
//}

- (UILabel *)lable{
    if (!_lable) {
        _lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 5)];
        _lable.text = @"wangxiaolong";
    }
    return _lable;
}
- (instancetype)initWithString:(NSString *)string image:(UIView *)image{
    if (self = [super init]) {
        self.lable.text = string;
        self.image = image;
    }
    return self;
}

+ (instancetype)CollectionWithString:(NSString *)string image:(UIView *)image{
    return [[self alloc]initWithString:string image:image];
}
@end
