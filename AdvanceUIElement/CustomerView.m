
//
//  CustomerView.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "CustomerView.h"
#import <QuartzCore/QuartzCore.h>
@implementation CustomerView

- (void)drawRect:(CGRect)rect{
    //获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
   
    CGContextMoveToPoint(ctx,0,0);
    CGContextAddLineToPoint(ctx,70,70);
    CGContextSetLineWidth(ctx, 15);
    CGContextSetRGBStrokeColor(ctx,0, 1.0, 0, 1.0);
    //第二种设置颜色的方式
    
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    CGContextStrokePath(ctx);
    //    //注意线条不能渲染为实心的
    //    CGContextFillPath(ctx);
    
    
    CGContextMoveToPoint(ctx,0,70);
    CGContextAddLineToPoint(ctx,70,0);
    CGContextSetLineWidth(ctx,10);
    CGContextSetLineCap(ctx,kCGLineCapRound);
    [[UIColor grayColor] set];
    
    CGContextStrokePath(ctx);
    
    //2.绘制三角形
    //设置起点
    CGContextMoveToPoint(ctx, 20, 100);
    //设置第二个点
    CGContextAddLineToPoint(ctx, 40, 300);
    //设置第三个点
    CGContextAddLineToPoint(ctx, 200, 200);
    //设置终点
    //     CGContextAddLineToPoint(ctx, 20, 100);
    //关闭起点和终点
    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
    
    // 画圆弧
    // 1.获取上下文
       // 2.画圆弧
    // x/y 圆心
    // radius 半径
    // startAngle 开始的弧度
    // endAngle 结束的弧度
    // clockwise 画圆弧的方向 (0 顺时针, 1 逆时针)
    //    CGContextAddArc(ctx, 100, 100, 50, -M_PI_2, M_PI_2, 0);
    CGContextAddArc(ctx, 100, 100, 50, M_PI_2, M_PI, 0);
    CGContextClosePath(ctx);
    
    // 3.渲染
    //     CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
    
    // 2.画饼状图
    // 画线
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 100, 150);
    // 画圆弧
    CGContextAddArc(ctx, 100, 100, 50, M_PI_2, M_PI, 0);
    //    CGContextAddArc(ctx, 100, 100, 50, -M_PI, M_PI_2, 1);
    
    // 关闭路径
    CGContextClosePath(ctx);
    [[UIColor brownColor]set];
    
    
    // 3.渲染 (注意, 画线只能通过空心来画)
    CGContextFillPath(ctx);
    
    
    
    //画圆，以便以后指定可以显示图片的范围
    //获取图形上下文
    //CGContextRef ctx=UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 50, 50));
    
    //指定上下文中可以显示内容的范围就是圆的范围
    CGContextClip(ctx);
    UIImage *image2=[UIImage imageNamed:@"type_disble"];
    [image2 drawAtPoint:CGPointMake(100, 100)];
    
    
    
    //画三角形，以便以后指定可以显示图片的范围
    //获取图形上下文
   
    //    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 50, 50));
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 60, 150);
    CGContextAddLineToPoint(ctx, 140, 150);
    CGContextClosePath(ctx);
    
    
    //注意：指定范围（也就是指定剪切的方法一定要在绘制范围之前进行调用）
    //指定上下文中可以显示内容的范围就是圆的范围
    CGContextClip(ctx);
    UIImage *image3=[UIImage imageNamed:@"me"];
    [image2 drawAtPoint:CGPointMake(100, 100)];
    
    
    
    //画四边形
    //获取图形上下文
    
    //绘图
    CGContextAddRect(ctx, CGRectMake(20, 50, 100, 100));
    //渲染
    CGContextStrokePath(ctx);
    
    
}


@end
/**注意：
 1.drawRect:
 
 （1）为什么要实现drawRect:⽅法才能绘图到view上?
 
 因为在drawRect:⽅法中才能取得跟view相关联的图形上下文
 
 （2）drawRect:⽅法在什么时候被调用?
 
 当view第一次显示到屏幕上时(被加到UIWindow上显示出来)
 
 调用view的setNeedsDisplay或者setNeedsDisplayInRect:时
 
 .Quartz2D须知
 
 Quartz2D的API是纯C语⾔言的
 Quartz2D的API来自于Core Graphics框架
 
 数据类型和函数基本都以CG作为前缀
 
 CGContextRef
 CGPathRef
 CGContextStrokePath(ctx);
 
 3.drawRect:中取得的上下⽂文
 
 在drawRect:方法中取得上下文后,就可以绘制东西到view上
 
 View内部有个layer(图层)属性,drawRect:方法中取得的是一个Layer Graphics Context,因此,绘制的东西其实是绘制到view的layer上去了
 
 View之所以能显示东西,完全是因为它内部的layer
 */


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 ⾃定义view的步骤:
 
 (1)新建⼀个类,继承自UIView
 
 (2)实现-(void)drawRect:(CGRect)rect⽅法.然后在这个⽅方法中 :
 
 1)取得跟当前view相关联的图形上下文;
 
 2)绘制相应的图形内容
 
 3)利用图形上下文将绘制的所有内容渲染显示到view上面
 */