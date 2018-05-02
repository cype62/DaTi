//
//  ViewController.h
//  DaTi
//
//  Created by BennyChen on 2018/4/29.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
//    记录缩放按钮点击状态
    BOOL status;
}
//分数
@property (weak, nonatomic) IBOutlet UILabel *core;
//进度
@property (weak, nonatomic) IBOutlet UILabel *schedule;
//题目
@property (weak, nonatomic) IBOutlet UILabel *titles;

//放大按钮
@property (weak, nonatomic) IBOutlet UIButton *bigpic;


@property (weak, nonatomic) IBOutlet UIImageView *pic;
@property (weak, nonatomic) IBOutlet UIView *answerView;
@property (weak, nonatomic) IBOutlet UIImageView *bjView;


@end

