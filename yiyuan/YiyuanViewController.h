//
//  YiyuanViewController.h
//  yiyuan
//
//  Created by 袁文轶 on 16/5/16.
//  Copyright © 2016年 谢雪彬. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FouthViewController.h"
#import "FifthViewController.h"
@interface YiyuanViewController : UITabBarController

@property (strong,nonatomic) UINavigationController *FirstNC;
@property (strong,nonatomic) FirstViewController *FirstVC;

@property (strong,nonatomic) UINavigationController *SecondNC;
@property (strong,nonatomic) SecondViewController *SecondVC;

@property (strong,nonatomic) UINavigationController *ThirdNC;
@property (strong,nonatomic) SecondViewController *ThirdVC;

@property (strong,nonatomic) UINavigationController *FouthNC;
@property (strong,nonatomic) FirstViewController *FouthVC;

@property (strong,nonatomic) UINavigationController *FifthNC;
@property (strong,nonatomic) SecondViewController *FifthVC;



@end
