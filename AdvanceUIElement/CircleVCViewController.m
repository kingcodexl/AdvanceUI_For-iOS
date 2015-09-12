
//
//  CircleVCViewController.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "CircleVCViewController.h"
#import "CircleView.h"
@interface CircleVCViewController ()

@property (weak, nonatomic) IBOutlet CircleView *circleView;

- (IBAction)sender:(UISlider *)sender;
@end

@implementation CircleVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)sender:(UISlider *)sender {
    
    self.circleView.radius = sender.value;
}
@end
