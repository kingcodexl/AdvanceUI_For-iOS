//
//  CircleView.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView
-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
    }
    return  self;
}

//设置radius,立即重绘
-(void)setRadius:(float)radius{
    _radius = radius;
    [self setNeedsDisplay];
}

//如果view是从xib或storyboard中创建出来的会先调用awakefromnib方法
- (void)awakeFromNib
{
    //在这里为圆的半径设定一个初始的值
    self.radius = 20;
    [self addImageView];
    
}
- (void)addImageView{
    
    self.layer.contents = (id)[UIImage imageNamed:@"error"].CGImage;
}
/*
- (void)drawRect:(CGRect)rect
{
    //1.获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.绘图
    //在自定义的view中画一个圆
    CGContextAddArc(ctx, 100, 100, self.radius, 0, 2*M_PI, 0);
    //设置圆的填充颜色
    [[UIColor grayColor]set];
    
    //3.渲染
    //    CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
}*/

-(id)initWithCoder:(NSCoder *)aDecoder
{
    //请注意这里一定要先初始化父类的构造方法
    if (self=[super initWithCoder:aDecoder]) {
        NSLog(@"initWithCoder:");
        
        //NSTimer一般用于定时的更新一些非界面上的数据,告诉多久调用一次
        //使用定时器,使用该定时器会出现卡顿的现象
//               [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateImage) userInfo:nil repeats:YES];
        
        // CADisplayLink刷帧，默认每秒刷新60次
        //该定时器创建之后，默认是不会执行的，需要把它加载到消息循环中
        CADisplayLink *display= [CADisplayLink displayLinkWithTarget:self selector:@selector(updateImage)];
       
        [display addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        
    }
    return self;
}

-(void)updateImage
{
    //调用该方法重绘画面
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect
{
    //把图片绘制到view上
    
    //每次调用该方法对画面进行重绘时，imageY的值就+5
    self.imageY+=5;
    //判断，当雪花超出屏幕的时候，让图片从头开始降落
    if (self.imageY>rect.size.height) {
        self.imageY=0;
    }
    UIImage *image=[UIImage imageNamed:@"type_big_28"];
    [image drawAtPoint:CGPointMake(0, self.imageY)];
    
    UIImage *image2=[UIImage imageNamed:@"type_big_18"];
    [image2 drawAtPoint:CGPointMake(80, self.imageY)];
    
    //1.获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.绘图
    //在自定义的view中画一个圆
    CGContextAddArc(ctx, 100, 100, self.radius, 0, 2*M_PI, 0);
    //设置圆的填充颜色
    [[UIColor grayColor]set];
    
    //3.渲染
    //    CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
}
@end
