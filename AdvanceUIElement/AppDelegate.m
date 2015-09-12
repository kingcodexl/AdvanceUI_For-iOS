//
//  AppDelegate.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/5.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "AppDelegate.h"
#import "XIBViewController.h"
#import "ViewController.h"
#import "CustomerVC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //window.backgroundColor = [UIColor whiteColor];
    //#####################控制器的创建
    /* 通过xib创建*/
    XIBViewController *xibVC = [[XIBViewController alloc]initWithNibName:@"MyLodaXIB" bundle:nil];
    
    window.rootViewController = xibVC;
    self.window = window;
    
    NSLog(@"GitHub_Test");
    
    
    
    /*纯代码创建;注意控制器的view是延迟加载的，也就是用到的时候才加载
    UIViewController *viewVC = [[UIViewController alloc]init];
    viewVC.view = [[UIView alloc]initWithFrame:window.frame];
    viewVC.view.backgroundColor = [UIColor grayColor];
    //这里分为两步，一步创建，一步赋值。默认创建和平面一样的view
    viewVC.view.backgroundColor = [UIColor grayColor];
    
    CustomerVC *viewVC = [[CustomerVC alloc]init];
    window.rootViewController = viewVC;
     */
    
    
    
    /*storyboard 初始化控制器有
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"XlStoryBoard" bundle:nil];
    ViewController *controller = [storyboard instantiateInitialViewController];
    window.rootViewController = controller;
    */
    
    /*storyboard 初始化控制器通过指定
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"one"];
     
    window.rootViewController = controller;
     */

    
    
    //###################控制器的View的创建
    //1、没有xib和storyboard,则会自动创建一个空白的view作为控制器的view
    /*
    UIViewController *VC = [[UIViewController alloc] init];
    window.rootViewController = VC;
    */
    
    //2、通过storyboard创建
    //会创建箭头指向的view座位控制器的view，如果重写了控制器的loadview方法，就不创建storyboard中的描述view座位控制器的view，而是创建一个空白的view
    /*
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *controller = [storyboard instantiateInitialViewController];
    window.rootViewController = controller;
    */
    
    //3、指定xib创建，会创建xib中秒速的view座位控制的view,如果重写loadview则情况和sb一样。
    /*
    XIBViewController *xibVC = [[XIBViewController alloc]initWithNibName:@"MyLodaXIB" bundle:nil];
    
    window.rootViewController = xibVC;
    */
    
    //4、5如果有同名的xib和去掉Controller的xib，则会自动找到xib的view作为控制器的view
    
    //6、重写loadview,则会导致不会去找从xib或者sb中的view，而是创建一个空白的view
    
    
    self.window = window;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
