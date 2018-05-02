//
//  ViewController.m
//  DaTi
//
//  Created by BennyChen on 2018/4/29.
//  Copyright © 2018年 BennyChen. All rights reserved.
//



#import "ViewController.h"
#import "IdiomModel.h"

@interface ViewController ()
//数组模型
@property(strong,nonatomic)NSArray *questions;


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
    
    
    IdiomModel *model = self.questions[0];

    NSLog(@"%@/n",self.questions);
    NSLog(@"%@",model.answer);
    
    // Do any additional setup after loading the view, typically from a nib.
}




-(NSArray *)questions{
    if(_questions == nil){
//        加载plist文件
        NSString *path = [[NSBundle mainBundle]pathForResource:@"questions" ofType:@"plist"];
//        使用数组接收plist文件
        NSArray *dicArr = [NSArray arrayWithContentsOfFile:path];
//        创建可变数组合，接收dicArr遍历的元素
        NSMutableArray *mutArr = [NSMutableArray array];
        for (NSDictionary *dict in dicArr) {
            IdiomModel *model = [[IdiomModel alloc]init];
            model.answer = dict[@"answer"];
            model.title = dict[@"title"];
            model.options = dict[@"options"];
            
            [mutArr addObject:model];
        }
        _questions = mutArr;
    }
    return _questions;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
