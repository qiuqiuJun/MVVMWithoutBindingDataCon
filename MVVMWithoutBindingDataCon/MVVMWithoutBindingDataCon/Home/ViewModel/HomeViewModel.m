//
//  HomeModel.m
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import "HomeViewModel.h"

@implementation HomeViewModel
+ (HomeViewModel *)viewModelWith:(HomeModel *)homeModel{
    //组装view需要的数据.
    HomeViewModel *model = [[HomeViewModel alloc] init];
    model.model = homeModel;
    model.bgColor = [UIColor lightGrayColor];
    model.titleFont = [UIFont systemFontOfSize:10];
    return model;
}
@end
