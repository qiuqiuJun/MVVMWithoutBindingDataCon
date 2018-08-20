//
//  ViewController.m
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "ViewControllerDatacontroller.h"
#import "HomeViewModel.h"
@interface ViewController ()
@property (nonatomic,strong) CustomView *userInfoView;
@property (nonatomic,strong) ViewControllerDatacontroller *dataController;

@end

@implementation ViewController
#pragma -mark lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化ui
    [self setUI];
    //获取数据，模拟网络获取数据
    [self getData];
}
#pragma -mark initUI
- (void)setUI{
    self.userInfoView.frame = CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 70);
    [self.view addSubview:self.userInfoView];
}
#pragma -mark Data
- (void)getData{
    [self.dataController getNetWorkDataWithBlock:^(id response, NSError *error) {
        if (error) {
            return;
        }
        //组装viewModel数据
        HomeViewModel *model = [HomeViewModel viewModelWith:(HomeModel *)response];
        //刷新ui
        [self.userInfoView bindData:model];
    }];
}
#pragma mark - lazy
- (CustomView *)userInfoView{
    if (nil == _userInfoView) {
        _userInfoView = [[CustomView alloc] init];
    }
    return _userInfoView;
}
- (ViewControllerDatacontroller *)dataController{
    if (nil == _dataController) {
        _dataController = [[ViewControllerDatacontroller alloc] init];
    }
    return _dataController;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
