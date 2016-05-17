//
//  ThirdViewController.m
//  yiyuan
//
//  Created by 袁文轶 on 16/5/16.
//  Copyright © 2016年 谢雪彬. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.navigationController.tabBarItem.tag == 0) {
        self.navigationItem.title = @"夺宝";
    } else if(self.navigationController.tabBarItem.tag == 1){
        self.navigationItem.title = @"分类";
    } else if(self.navigationController.tabBarItem.tag == 2){
        self.navigationItem.title = @"最新动态";
    } else if(self.navigationController.tabBarItem.tag == 3){
        self.navigationItem.title = @"清单";
    } else {
        self.navigationItem.title = @"我的";
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
