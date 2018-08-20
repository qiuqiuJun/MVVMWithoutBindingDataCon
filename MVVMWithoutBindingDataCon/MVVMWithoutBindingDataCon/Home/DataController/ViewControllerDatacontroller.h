//
//  ViewControllerDatacontroller.h
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYBaseDataVC.h"
#import "HomeModel.h"
@interface ViewControllerDatacontroller : DYBaseDataVC
//获取数据
- (void)getNetWorkDataWithBlock:(DYDataResponseBlock)block;
@end
