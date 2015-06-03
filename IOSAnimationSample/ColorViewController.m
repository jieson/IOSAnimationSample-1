//
//  ColorViewController.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController()
{
    
}
@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (weak, nonatomic) IBOutlet UILabel *name;

@end

@implementation ColorViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 animations:^{
        self.blueSquare.backgroundColor = [UIColor redColor];
        self.name.textColor = [UIColor whiteColor];
    }];
    
    
}

@end
