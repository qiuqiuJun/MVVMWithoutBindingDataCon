//
//  ViewControllerDatacontroller.m
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import "ViewControllerDatacontroller.h"

@implementation ViewControllerDatacontroller
- (void)getNetWorkDataWithBlock:(DYDataResponseBlock)block{
    //模拟网络数据...
    HomeModel *model = [[HomeModel alloc] init];
    model.address = @"北京";
    model.age = 20;
    model.name = @"张三";
    if (block) {
        block(model,nil);
    }
}
@end
