//
//  EasingViewController.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "EasingViewController.h"

@interface EasingViewController()
{
    
}
@property (weak, nonatomic) IBOutlet UIView *box1;
@property (weak, nonatomic) IBOutlet UIView *box2;
@property (weak, nonatomic) IBOutlet UIView *box3;
@property (weak, nonatomic) IBOutlet UIView *box4;

@end

@implementation EasingViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        
        CGPoint blurCenter = self.box1.center;
        CGFloat x = self.view.bounds.size.width - self.box1.center.x;
        blurCenter.x = x;
        self.box1.center = blurCenter;
        
    } completion:^(BOOL finished) {
        
    }];
    

    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        CGPoint blurCenter = self.box2.center;
        CGFloat x = self.view.bounds.size.width - self.box2.center.x;
        blurCenter.x = x;
        self.box2.center = blurCenter;
        
    } completion:^(BOOL finished) {
        
    }];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        CGPoint blurCenter = self.box3.center;
        CGFloat x = self.view.bounds.size.width - self.box3.center.x;
        blurCenter.x = x;
        self.box3.center = blurCenter;
        
    } completion:^(BOOL finished) {
        
    }];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        CGPoint blurCenter = self.box4.center;
        CGFloat x = self.view.bounds.size.width - self.box4.center.x;
        blurCenter.x = x;
        self.box4.center = blurCenter;
        
    } completion:^(BOOL finished) {
        
    }];

}

@end
