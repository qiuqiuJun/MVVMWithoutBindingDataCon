//
//  HomeModel.h
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HomeModel.h"

@interface HomeViewModel : NSObject
//model
@property (nonatomic,strong)HomeModel *model;
//背景颜色
@property (nonatomic,strong)UIColor *bgColor;
//字体大小
@property (nonatomic,strong)UIFont *titleFont;

+ (HomeViewModel *)viewModelWith:(HomeModel *)homeModel;
@end
