//
//  ViewController.m
//  AdvanceUIElement
//
//  Created by kingcodexl on 15/9/5.
//  Copyright (c) 2015年 kingcodexl. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"
@interface ViewController ()
- (IBAction)saveDataBtn:(UIButton *)sender;
- (IBAction)readDataBtn:(UIButton *)sender;
@property (nonatomic,strong) Person *person;
@property (nonatomic,strong) Student *student;
@end

@implementation ViewController

//- (void)loadView{
//    UIView *v = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    v.backgroundColor = [UIColor brownColor];
//    self.view =v;
//}
//view加载完毕后就会调用viewdidload，一般用于自定义view
-(Person *)person{
    if (!_person) {
        //NSDictionary *dict = @{@"wangxiaolong":@"name",@"23":@"age"};
        NSDictionary *dict = @{@"name":@"wangxiaolong",@"age":@"23"};
        _person = [Person PersonWithDict:dict];
    }
    return _person;
}

- (Student *)student{
    if (!_student) {
        NSDictionary *dict = @{@"name":@"wangxiaolong",@"age":@"23",@"height":@"175"};
        _student = [Student StudentWithDict:dict];
    }
    return _student;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveDataBtn:(UIButton *)sender {
    NSString *docPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    NSString *path = [docPath stringByAppendingPathComponent:@"person.wang"];
    [NSKeyedArchiver archiveRootObject:self.student toFile:path];
    NSLog(@"archve path %@",path);
    
}

- (IBAction)readDataBtn:(UIButton *)sender {
    NSString *docPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    NSString *path = [docPath stringByAppendingPathComponent:@"person.wang"];
     NSLog(@"UNarchve path %@",path);
    Student *temp = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"%@ ,%@ ,%@",temp.name,temp.age,temp.height);
}
@end
