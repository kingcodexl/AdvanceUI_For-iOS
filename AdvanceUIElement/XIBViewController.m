//
//  XIBViewController.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/5.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "XIBViewController.h"
#import "XlCollectionViewCell.h"
#define RANDOMCOLOR [UIColor colorWithHue:( arc4random() % 256 / 256.0 ) saturation:( arc4random() % 128 / 256.0 ) + 0.5 brightness:( arc4random() % 128 / 256.0 ) + 0.5 alpha:1];
@interface XIBViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation XIBViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self configSubView];
    // Do any additional setup after loading the view.
}

- (void)configSubView{
    //需要注册cell
    static NSString *identify = @"cell";
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identify];
    [self.collectionView registerNib:[UINib nibWithNibName:@"XlCollectionCell" bundle:nil] forCellWithReuseIdentifier:identify];
//    [self.collectionView registerClass:[XlCollectionViewCell class] forCellWithReuseIdentifier:identify];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 16;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identify = @"cell";
    XlCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, cell.frame.size.width, cell.frame.size.height)];
    view.backgroundColor = RANDOMCOLOR;
    cell.image = view;
    cell.lable.text = @"wang";
    //cell.backgroundColor = RANDOMCOLOR;
    if (!cell) {
        cell = [XlCollectionViewCell CollectionWithString:@"QQQQQQQQQ" image:view];
        
    }
  

    NSLog(@"%@",cell);
    return cell;
}

#pragma mark  - collectionViewDelegate

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
