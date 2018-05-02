//
//  IdiomModel.h
//  DaTi
//
//  Created by BennyChen on 2018/5/2.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IdiomModel : NSObject
//答案
@property(copy,nonatomic)NSString *answer;
//提示
@property(copy,nonatomic)NSString *title;
//选项
@property(strong,nonatomic)NSArray *options;

@end
