//
//  ViewController.m
//  DaTi
//
//  Created by BennyChen on 2018/4/29.
//  Copyright © 2018年 BennyChen. All rights reserved.
//



#import "ViewController.h"
#import "Questions.h"
#import "IdiomModel.h"


@interface ViewController (){
    CGRect picFrame;
    float tframe;
}

- (IBAction)bt3:(id)sender;


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    获取初始化的pic坐标和大小
    picFrame = _pic.frame;
    
    tframe = self.view.bounds.size.height;
    NSLog(@"%f",tframe);
    

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
//    添加图片的imageView的点击事件
    _pic.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(makePic)];
    [_pic addGestureRecognizer:singleTap];
    
//    加载plist文件数据
    Questions *question = [[Questions alloc]init];
    
    
    
    IdiomModel *model = question.questions[0];
    NSLog(@"%@/n",question.questions);
    NSLog(@"%@",model.answer);
    
    // Do any additional setup after loading the view, typically from a nib.
}





//缩放按钮的响事件

- (IBAction)bt3:(id)sender {
    [self makePic];
}




//图片缩放响应方法
-(void)makePic{
    
    if (status) {
//        status为true，已点击，现在需要复原
        status = false;

//        图片复原
//        _pic.frame = picFrame;
        _pic.center = CGPointMake(_pic.center.x, _pic.center.y-100);
        _pic.transform = CGAffineTransformMakeScale(1, 1);
        
        NSLog(@"@#@$@");
        [self takeView];
//
    }else{
        //        status为false，没点击，现在需要放大
        status = true;
        //        图片放大1.5倍，并移动y轴100
        NSLog(@"x =%f y = %f",self.pic.center.x,self.pic.center.y);
        _pic.center = CGPointMake(_pic.center.x, _pic.center.y+100);
        NSLog(@"x =%f y = %f",self.pic.center.x,self.pic.center.y);
        
        
        _pic.transform = CGAffineTransformMakeScale(1.5, 1.5);
        [self takeView];
    }
    
}


//
//
//-(void)buttonAction3:(UIButton*)bt4{
//    //点击海报的响应
//    UIButton *cover = [[UIButton alloc] init];
//    cover.frame = self.view.bounds;
//    cover.backgroundColor = [UIColor blackColor];
//    cover.alpha = 0;
//    self.cover = cover;
//    [self.view addSubview:cover];
//    // 2.更换阴影和图片的位置
//    [self.view bringSubviewToFront:bt4];
//    // 3.更改图像大小，显示阴影
//    cover.alpha = 0.6;
//    CGFloat iconWidth = self.view.frame.size.width;
//    CGFloat iconHeight = iconWidth;
//    CGFloat iconX = 0;
//    CGFloat iconY = (self.view.frame.size.height / 2) - (iconHeight / 2);
//    bt4.frame = CGRectMake(iconX, iconY, iconWidth, iconHeight);
//    // 1.2给阴影添加变回小图的触发事件
//    [bt4 addTarget:self action:@selector(smallImg:) forControlEvents:UIControlEventTouchUpInside]; }
//- (void) smallImg:(UIButton *)sm1 {
//        // 1.删除阴影
//        self.cover.alpha = 0;
//        // 2.恢复图片
//        sm1.frame = CGRectMake(85, 110, 150, 200);
//    [self.view addSubview:sm1];
//
//    }
//

-(void)takeView{
    if(status){
        //        显示阴影
        [self.view insertSubview:_yinying belowSubview:_pic];
        
    }else{
        //        隐藏阴影
        [self.view sendSubviewToBack:_yinying];
    }
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
