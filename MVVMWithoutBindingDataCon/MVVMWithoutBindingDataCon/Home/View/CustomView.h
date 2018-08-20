//
//  CustomView.h
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewModel.h"
@interface CustomView : UIView
//根据viewModel组装的数据，显示ui
- (void)bindData:(HomeViewModel *)model;
@end
