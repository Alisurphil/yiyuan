//
//  YiyuanViewController.m
//  yiyuan
//
//  Created by 袁文轶 on 16/5/16.
//  Copyright © 2016年 谢雪彬. All rights reserved.
//

#import "YiyuanViewController.h"

@interface YiyuanViewController ()

@end

@implementation YiyuanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //在main.story中找到名为first的页面，将该页面设置为_firstVC全局对象
    _FirstVC = [storyboard instantiateViewControllerWithIdentifier:@"First"];
    //将_firstVC设置为_firstNC导航控制器的跟视图
    _FirstNC = [[UINavigationController alloc]initWithRootViewController:_FirstVC];
    //_FifthNC.navigationItem.title = @"夺宝";
    //为_firstNC导航控制器设置tab bar item，将该选项卡栏项目的标题设置为first,图片设置为名为first的图片，下表设为0
    _FirstNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"夺宝" image:[UIImage imageNamed:@"First"] tag:0];

    
    UIStoryboard *storyboard2 = [UIStoryboard storyboardWithName:@"Second" bundle:[NSBundle mainBundle]];
    _SecondVC = [storyboard2 instantiateViewControllerWithIdentifier:@"Second"];
    _SecondNC = [[UINavigationController alloc]initWithRootViewController:_SecondVC];
    _SecondNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"分类" image:[UIImage imageNamed:@"Second"] tag:1];
    
    UIStoryboard *storyboard3 = [UIStoryboard storyboardWithName:@"Third" bundle:[NSBundle mainBundle]];
    _ThirdVC = [storyboard3 instantiateViewControllerWithIdentifier:@"Third"];
    _ThirdNC = [[UINavigationController alloc]initWithRootViewController:_ThirdVC];
    _ThirdNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"最新动态" image:[UIImage imageNamed:@"Third"] tag:2];
    
    UIStoryboard *storyboard4 = [UIStoryboard storyboardWithName:@"Fouth" bundle:[NSBundle mainBundle]];
    _FouthVC = [storyboard4 instantiateViewControllerWithIdentifier:@"Fouth"];
    _FouthNC = [[UINavigationController alloc]initWithRootViewController:_FouthVC];
    _FouthNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"清单" image:[UIImage imageNamed:@"Fouth"] tag:3];
    
    UIStoryboard *storyboard5 = [UIStoryboard storyboardWithName:@"Fifth" bundle:[NSBundle mainBundle]];
    _FifthVC = [storyboard5 instantiateViewControllerWithIdentifier:@"Fifth"];
    _FifthNC = [[UINavigationController alloc]initWithRootViewController:_FifthVC];
    _FifthNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:[UIImage imageNamed:@"Fifth"] tag:4];
    self.viewControllers = @[_FirstNC,_SecondNC,_ThirdNC,_FouthNC,_FifthNC];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
{
    if (viewController == _FirstNC) {
        NSLog(@"切换到夺宝页面");
    }else if (viewController == _SecondNC){
        NSLog(@"切换到分类页面");
    }else if (viewController == _ThirdNC){
        NSLog(@"切换到最新动态页面");
    }else if (viewController == _FouthNC){
        NSLog(@"切换到清单页面");
    }else if (viewController == _FifthNC){
        NSLog(@"切换到我页面");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
