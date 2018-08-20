//
//  HomeModel.h
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeModel : NSObject
//名字
@property (nonatomic,strong)NSString *name;
//年龄
@property (nonatomic,assign)NSInteger age;
//地址
@property (nonatomic,strong)NSString *address;
@end
