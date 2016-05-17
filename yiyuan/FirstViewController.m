//
//  FirstViewController.m
//  yiyuan
//
//  Created by 袁文轶 on 16/5/16.
//  Copyright © 2016年 谢雪彬. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()<UIScrollViewDelegate/*,UITableViewDataSource,UITableViewDelegate*/>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIPageControl *pageControl;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = _headerView.frame;
    rect.size.height = self.view.frame.size.width / 2;
    _headerView.frame = rect;
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, rect.size.height - 40, rect.size.width, 40)];
    _pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    _pageControl.numberOfPages = 5;
    _pageControl.currentPage = 0;
    [_headerView addSubview:_pageControl];

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
    
    CGFloat imageW = self.view.frame.size.width;
    CGFloat imageH = rect.size.height;
    CGFloat imageY = 0;
    NSInteger totalCount = 5;
    for (int i = 0; i < totalCount; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        CGFloat imageX = i * imageW;
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        imageView.clipsToBounds = YES;
        //设置图片
        NSString *name = [NSString stringWithFormat:@"shouye%d", i + 1];
        imageView.image = [UIImage imageNamed:name];
        self.scrollView.showsHorizontalScrollIndicator = NO;
        
        [self.scrollView addSubview:imageView];
    }
    CGFloat contentW = totalCount *imageW;
    self.scrollView.contentSize = CGSizeMake(contentW, rect.size.height);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.delegate = self;
    [self addTimer];

}

- (void)nextImage{
    int page = (int)self.pageControl.currentPage;
    if (page == 4) {
        page = 0;
    }else{
        page++;
    }
    CGFloat x = page * _headerView.frame.size.width;
    //轮播平移特效
    [UIView animateWithDuration:0.3 animations:^{
        self.scrollView.contentOffset = CGPointMake(x, 0);
    }];
    
 
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollviewW = _headerView.frame.size.width;
    CGFloat x = scrollView.contentOffset.x;
    int page = (x + scrollviewW / 2) /  scrollviewW;
    self.pageControl.currentPage = page;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self removeTimer];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self addTimer];
}

- (void)addTimer{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
}

- (void)removeTimer{
    [self.timer invalidate];
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
