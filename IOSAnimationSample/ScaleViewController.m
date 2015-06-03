//
//  ScaleViewController.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "ScaleViewController.h"

@interface ScaleViewController()
{
    
}
@property (weak, nonatomic) IBOutlet UIView *blueSquare;

@end

@implementation ScaleViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 animations:^{
        self.blueSquare.transform = CGAffineTransformMakeScale(2.0, 2.0);
    }];
}

@end
