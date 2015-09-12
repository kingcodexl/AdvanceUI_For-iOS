//
//  CustomerView.h
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/6.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerView : UIView




@end
/**
 一、什么是Quartz2D
 
 Quartz 2D是⼀个二维绘图引擎,同时支持iOS和Mac系统
 
 Quartz 2D能完成的工作：
 
 绘制图形 : 线条\三角形\矩形\圆\弧等
 
 绘制文字
 
 绘制\生成图片(图像)
 
 读取\生成PDF
 
 截图\裁剪图片
 
 自定义UI控件
 
 二、Quartz2D在iOS开发中的价值
 
 为了便于搭建美观的UI界面,iOS提供了UIKit框架,⾥⾯有各种各样的UI控件
 
 UILabel:显⽰文字
 UIImageView:显示图片
 UIButton:同时显示图片和⽂字(能点击)
 
 利⽤UIKit框架提供的控件,拼拼凑凑,能搭建和现实一些简单、常见的UI界⾯
 
 但是,有些UI界面极其复杂、⽽且⽐较个性化,⽤普通的UI控件无法实现,这时可以利用Quartz2D技术将控件内部的结构画出来,自定义控件的样子
 
 其实,iOS中⼤部分控件的内容都是通过Quartz2D画出来的
 因此,Quartz2D在iOS开发中很重要的⼀个价值是:自定义view(自定义UI控件)
 
 三、图形上下文
 
 图形上下文(Graphics Context):是一个CGContextRef类型的数据
 
 图形上下文的作用:
 
 (1)保存绘图信息、绘图状态
 (2)决定绘制的输出目标(绘制到什么地⽅去?) (输出目标可以是PDF⽂文件、Bitmap或者显示器的窗口上)
 */