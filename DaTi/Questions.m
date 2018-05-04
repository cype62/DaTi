//
//  questions.m
//  DaTi
//
//  Created by BennyChen on 2018/5/4.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "Questions.h"
#import "IdiomModel.h"

@implementation Questions

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

@end
