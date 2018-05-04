//
//  MakePic.m
//  DaTi
//
//  Created by BennyChen on 2018/5/4.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "MakePic.h"

@implementation MakePic

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.transform = CGAffineTransformMakeScale(1, 1);
        self.center = CGPointMake(self.center.x, self.center.y-100);
        
    }
    return self;
}

@end
