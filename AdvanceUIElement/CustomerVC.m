//
//  CustomerVC.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "CustomerVC.h"
#import "CustomerView.h"
#define RANDOMCOLOR [UIColor colorWithHue:( arc4random() % 256 / 256.0 ) saturation:( arc4random() % 128 / 256.0 ) + 0.5 brightness:( arc4random() % 128 / 256.0 ) + 0.5 alpha:1].CGColor;

#define angle2Radian(angle)  ((angle)/180.0*M_PI)
@interface CustomerVC ()
@property (nonatomic,strong)CALayer *calayer;
@property (nonatomic,strong)CALayer *mylaryer;
@property (nonatomic,strong)UIView *myView;
@end

@implementation CustomerVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    CustomerView *cuView = [[CustomerView alloc]initWithFrame:self.view.frame];
//    self.view = cuView;
    //[self configSubview];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self configAnimationView];
}
- (void)configAnimationView{
    self.mylaryer = [CALayer layer];
    self.mylaryer.frame = CGRectMake(50, 100, 200, 100);
    self.mylaryer.backgroundColor = [UIColor greenColor].CGColor;
    [self.view.layer addSublayer:self.mylaryer];
    
    
    self.myView =[[UIView alloc]initWithFrame:CGRectMake(0, 64, 375, 200)];
    self.myView.layer.backgroundColor = RANDOMCOLOR;
    [self.view addSubview:self.myView];
    
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 300, 50, 20);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(animatClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)animatClick:(UIButton *)btn{
    //1.创建核心动画CAKeyframeAnimation *keyAnima=[CAKeyframeAnimation animation];
    
    //平移
    //keyAnima.keyPath=@"position";
    //1.1告诉系统要执行什么动画
    /*
    NSValue *value1=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    NSValue *value2=[NSValue valueWithCGPoint:CGPointMake(200, 100)];
    NSValue *value3=[NSValue valueWithCGPoint:CGPointMake(200, 200)];
    NSValue *value4=[NSValue valueWithCGPoint:CGPointMake(100, 200)];
    NSValue *value5=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    keyAnima.values=@[value1,value2,value3,value4,value5];
    */
    
    
    //平移
    //1.1告诉系统要执行什么动画
    //创建一条路径
    /*
    CGMutablePathRef path=CGPathCreateMutable();
    //设置一个圆的路径
    CGPathAddEllipseInRect(path, NULL, CGRectMake(150, 100, 100, 100));
    keyAnima.path=path;
    */
    
    /*
    keyAnima.keyPath=@"transform.rotation";
    
    //设置动画时间
    keyAnima.duration=0.09;
    //设置图标抖动弧度
    //把度数转换为弧度  度数/180*M_PI
    keyAnima.values=@[@(-angle2Radian(4)),@(angle2Radian(4)),@(-angle2Radian(4))];
    //设置动画的重复次数(设置为最大值)
    keyAnima.repeatCount=MAXFLOAT;
    
        //1.2设置动画
    //执行完毕后，不删除动画
    keyAnima.removedOnCompletion=NO;
    //1.3设置保存动画的最新状态
    keyAnima.fillMode=kCAFillModeForwards;
    //1.4设置动画执行的时间
    keyAnima.duration=4.0;
    //1.5设置动画的节奏
    keyAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    
    //设置代理，开始—结束
    keyAnima.delegate=self;
    //2.添加核心动画
    [self.mylaryer addAnimation:keyAnima forKey:@"wangxiaolong"];
     */
    self.myView.layer.backgroundColor = RANDOMCOLOR;
    
    CATransition *animation = [CATransition animation];
    animation.type = @"cube";
    animation.subtype = kCATransitionFromLeft;
    animation.duration = 2.0;
    animation.startProgress = 0.5;
    animation.endProgress = 0.8;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    [self.myView.layer addAnimation:animation forKey:nil];
    
    /*
    // 平移动画
    CABasicAnimation *a1 = [CABasicAnimation animation];
    a1.keyPath = @"transform.translation.y";
    a1.toValue = @(100);
    // 缩放动画
    CABasicAnimation *a2 = [CABasicAnimation animation];
    a2.keyPath = @"transform.scale";
    a2.toValue = @(0.0);
    // 旋转动画
    CABasicAnimation *a3 = [CABasicAnimation animation];
    a3.keyPath = @"transform.rotation";
    a3.toValue = @(M_PI_2);
    
    // 组动画
    CAAnimationGroup *groupAnima = [CAAnimationGroup animation];
    
    groupAnima.animations = @[a1, a2, a3];
    
    //设置组动画的时间
    groupAnima.duration = 2;
    groupAnima.fillMode = kCAFillModeForwards;
    groupAnima.removedOnCompletion = NO;
    
    [self.myView.layer addAnimation:groupAnima forKey:nil];
     */
}

- (void)stopAnimation{
    [self.mylaryer removeAnimationForKey:@"wangxiaolong"];
}

- (void)configSubview{
    self.view.backgroundColor = [UIColor whiteColor];
    /*
     CustomerView *cuView = [[CustomerView alloc]initWithFrame:self.view.frame];
    cuView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:cuView];
     */
    self.calayer = [CALayer layer];
    self.calayer.frame = CGRectMake(0, 50, 200, 200);
    self.calayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:self.calayer];
    
    self.mylaryer = [CALayer layer];
    self.mylaryer.frame = CGRectMake(0, 100, 50,50);
    self.mylaryer.backgroundColor = [UIColor orangeColor].CGColor;
    [self.view.layer  addSublayer:self.mylaryer];
    
    
    CALayer *Mylayer = [CALayer layer];
    Mylayer.frame = CGRectMake(0, 0, 100, 100);
    Mylayer.borderColor = [UIColor grayColor].CGColor;
    Mylayer.borderWidth = 5;
    Mylayer.contents = (id)[UIImage imageNamed:@"sina_logo"].CGImage;
    Mylayer.cornerRadius = 10;
    Mylayer.masksToBounds = YES;
    [self.view.layer addSublayer:Mylayer];
    
    UIView *myview = [[UIView alloc]init];
    myview.frame = CGRectMake(100, 100, 100, 100);
    myview.bounds = CGRectMake(-10, -10, 100, 100);
    myview.backgroundColor = [UIColor greenColor];
    [self.view addSubview:myview];
    
    
    UIView *myview1 = [[UIView alloc]init];
    myview1.frame = CGRectMake(0, 0, 50, 50);
    myview1.backgroundColor = [UIColor blackColor];
    [myview   addSubview:myview1];
    
    UIView *myview2 = [[UIView alloc]init];
    myview2.frame = CGRectMake(0, 0, 50, 50);
    myview2.center = CGPointMake(50, 0);
    myview2.backgroundColor = [UIColor brownColor];
    [myview   addSubview:myview2];
    
    UIView *myview3 = [[UIView alloc]init];
    myview3.frame = CGRectMake(0, 0, 50, 50);
    myview3.center = CGPointMake(0, 0);
    myview3.backgroundColor = [UIColor yellowColor];
    [myview   addSubview:myview3];
    

    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 300, 50, 20);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)click:(UIButton *)btn{
    /*
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    self.calayer.backgroundColor  = RANDOMCOLOR;
    [CATransaction commit];
    NSString *str = @"1";
    NSMutableDictionary  *dict = [[NSMutableDictionary alloc]initWithCapacity:0];
    dict[NSFontAttributeName] = @"";
    dict[NSBackgroundColorAttributeName] = @"red";
    dict[NSForegroundColorAttributeName ] = @"bule";
    */
    CABasicAnimation *baseAnimation = [CABasicAnimation animation];
//    baseAnimation.keyPath = @"position";
//    baseAnimation.fromValue = [NSValue valueWithCGPoint:CGPointMake(50, 50)];
//    baseAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 300)];
    baseAnimation.duration = 5.0;
    baseAnimation.removedOnCompletion = NO;
    baseAnimation.fillMode = kCAFillModeForwards;
    
//    
//    baseAnimation.keyPath = @"bounds";
//    baseAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 200, 200)];
    baseAnimation.keyPath = @"transform";
    baseAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI_2+M_PI_4, 1, 1, 1)];
    
    [self.mylaryer addAnimation:baseAnimation forKey:nil];
    
    
    
}
#pragma makr  - 截屏
- (UIImage *)clipScreen{
    //只需三步，截屏
    UIGraphicsBeginImageContext(self.view.frame.size);
    
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    //或者
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}

- (void)animationDidStart:(CAAnimation *)anim{
    
}
-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    
}


/*
- (void)drawRect1:(CGRect)rect
{
    
    //    1.加载图片到内存中
    UIImage *image = [UIImage imageNamed:@"me"];
    
    
    // 利用OC方法将图片绘制到layer上
    
    // 利用drawInRect方法绘制图片到layer, 是通过拉伸原有图片
    [image drawInRect:CGRectMake(0, 0, 200, 200)];
    
    // 利用drawAsPatternInRec方法绘制图片到layer, 是通过平铺原有图片
    //    [image drawAsPatternInRect:CGRectMake(0, 0, 320, 480)];
    
    
    
    //    1.加载图片到内存中
    UIImage *image1 = [UIImage imageNamed:@"me"];
    
    
    // 利用drawAsPatternInRec方法绘制图片到layer, 是通过平铺原有图片
    [image1 drawAsPatternInRect:CGRectMake(0, 0, 320, 480)];
    
    //    1.加载图片到内存中
    UIImage *image2 = [UIImage imageNamed:@"me"];
    
    
    // 利用OC方法将图片绘制到layer上
    
    // 将图片绘制到指定的位置
    [image2 drawAtPoint:CGPointMake(100, 100)];
    
    //[image drawAtPoint:<#(CGPoint)#> blendMode:<#(CGBlendMode)#> alpha:<#(CGFloat)#>]
}


@end
#pragma mark  - 绘图

- (void)drawPict{
    //画线
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctf);
    
    CGContextAddLineToPoint(ctf, 0, 0);
    CGContextMoveToPoint(ctf, 5, 5);
    CGContextSetLineWidth(ctf, 5);
    CGContextSetLineCap(ctf, kCGLineCapRound);
    CGContextSetLineJoin(ctf, kCGLineJoinMiter);
    [[UIColor redColor] set];
    CGContextStrokePath(ctf);
    
    //画圆
    
    CGContextRestoreGState(ctf);
    CGContextAddEllipseInRect(ctf, self.view.frame);
    CGContextTranslateCTM(ctf, 2, 4);
    CGContextScaleCTM(ctf, 2, 2);
  

    
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
