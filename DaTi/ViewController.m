//
//  ViewController.m
//  DaTi
//
//  Created by BennyChen on 2018/4/29.
//  Copyright © 2018年 BennyChen. All rights reserved.
//



#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bjView;



@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    设置状态栏字体掩饰
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
//    UIImage *bj = [UIImage imageNamed:@"bj.jpg"];
//    UIImageView *bjView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//
//    bjView.layer.borderColor = [UIColor greenColor].CGColor;
//    bjView.layer.borderWidth=2;
//    bjView.image = bj;
    
//    _bjView.layer.borderWidth=1;
//    _bjView.layer.borderColor = [UIColor greenColor].CGColor;
//    
//    _ttt.layer.borderWidth=1;
//    _ttt.layer.borderColor = [UIColor greenColor].CGColor;
//    _aaa.layer.borderWidth=1;
//    _aaa.layer.borderColor = [UIColor greenColor].CGColor;
//
//    
//    _pic.backgroundColor = [UIColor greenColor];
//    
//    NSLog(@"%ld+%ld",(long)_answerView.tag,self.view.tag);
//    
//    [self.view bringSubviewToFront:_answerView];
//    
////    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
//    NSArray *v = self.view.subviews;
//    for (UIView *view in v) {
//        if(view.tag == 2){
//            view.backgroundColor = [UIColor greenColor];
//            NSLog(@"找到");
//        }
//    }
    
   
//    修改提示图片的边框
    _pic.layer.borderColor = [UIColor blueColor].CGColor;
    _pic.layer.borderWidth = 3;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
