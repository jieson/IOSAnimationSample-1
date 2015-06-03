//
//  Opacity.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "OpacityViewController.h"

@interface OpacityViewController()
{
    
}

@property (weak, nonatomic) IBOutlet UIView *blueSquare;

@end

@implementation OpacityViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 animations:^{
        self.blueSquare.alpha = 0.1;
    }];
    
}

@end
