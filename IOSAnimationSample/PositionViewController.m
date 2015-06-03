//
//  PositionViewController.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "PositionViewController.h"

@interface PositionViewController()
{
    
}

@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (weak, nonatomic) IBOutlet UIView *redSquare;
@property (weak, nonatomic) IBOutlet UIView *greenSquare;

@end

@implementation PositionViewController


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 animations:^{
        CGPoint blurCenter = self.blueSquare.center;
        CGFloat x = self.view.bounds.size.width - self.blueSquare.center.x;
        blurCenter.x = x;
        self.blueSquare.center = blurCenter;
        
    }];
    
    
    
    [UIView animateWithDuration:1 delay:0.5 options:UIViewAnimationOptionTransitionNone animations:^{
        
        CGPoint redCenter = self.redSquare.center;
        CGFloat y = self.view.bounds.size.height - self.blueSquare.center.y;
        redCenter.y = y;
        self.redSquare.center = redCenter;
        
    } completion:^(BOOL finished) {
    }];
    
    
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionTransitionNone animations:^{
        
        CGPoint greenCenter = self.greenSquare.center;
        CGFloat greenX = self.view.bounds.size.width - self.greenSquare.center.x;
        CGFloat greenY = self.view.bounds.size.height - self.greenSquare.center.y;
        greenCenter.x = greenX;
        greenCenter.y = greenY;
        self.greenSquare.center = greenCenter;
        
    } completion:^(BOOL finished) {
    }];
    
}

@end
