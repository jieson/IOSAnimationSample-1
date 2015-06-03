//
//  SpringViewController.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "SpringViewController.h"

@interface SpringViewController()
{
    
}
@property (weak, nonatomic) IBOutlet UIView *box1;
@property (weak, nonatomic) IBOutlet UIView *box2;
@property (weak, nonatomic) IBOutlet UIView *box3;

@end

@implementation SpringViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 animations:^{
        CGPoint blurCenter = self.box1.center;
        CGFloat x = self.view.bounds.size.width - self.box1.center.x;
        blurCenter.x = x;
        self.box1.center = blurCenter;
    }];
    
    
    [UIView animateWithDuration:3 delay:0 usingSpringWithDamping:.1 initialSpringVelocity:0 options:UIViewAnimationOptionTransitionNone animations:^{
        CGPoint blurCenter = self.box2.center;
        CGFloat x = self.view.bounds.size.width - self.box2.center.x;
        blurCenter.x = x;
        self.box2.center = blurCenter;
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:8 delay:0 usingSpringWithDamping:.1 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        CGPoint blurCenter = self.box3.center;
        CGFloat x = self.view.bounds.size.width - self.box3.center.x;
        blurCenter.x = x;
        self.box3.center = blurCenter;
    } completion:^(BOOL finished) {
        
    }];
    
}

@end
