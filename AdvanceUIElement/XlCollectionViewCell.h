//
//  XlCollectionViewCell.h
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/7.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XlCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UILabel *lable;
@property (strong, nonatomic) IBOutlet UIView *image;

- (instancetype)initWithString:(NSString *)string image:(UIView *)image;
+ (instancetype)CollectionWithString:(NSString *)string image:(UIView *)image;

@end

