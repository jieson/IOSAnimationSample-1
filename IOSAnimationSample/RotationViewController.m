//
//  RatationViewController.m
//  IOSAnimationSample
//
//  Created by xuhui on 15/6/2.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController()
{
    
}
@property (weak, nonatomic) IBOutlet UIView *salmonSquare;

@end

@implementation RotationViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self spin];
}

- (void)spin
{
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.salmonSquare.transform = CGAffineTransformRotate(self.salmonSquare.transform, M_PI);
    } completion:^(BOOL finished) {
        [self spin];
    }];
}

@end
