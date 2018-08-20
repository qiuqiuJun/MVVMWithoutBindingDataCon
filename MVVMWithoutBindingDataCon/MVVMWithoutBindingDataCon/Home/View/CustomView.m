//
//  CustomView.m
//  MVVMWithoutBindingDataCon
//
//  Created by DOUBLEQ on 2018/8/18.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import "CustomView.h"
@interface CustomView()
@property (nonatomic,strong) UILabel *nameLa;
@property (nonatomic,strong) UILabel *ageLa;
@property (nonatomic,strong) UILabel *addressLa;
@property (nonatomic,strong) HomeViewModel *model;

@end
@implementation CustomView

- (instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
}
- (void)bindData:(HomeViewModel *)model{
    if (nil == model) {
        return;
    }
    self.model = model;
    self.backgroundColor = self.model.bgColor;
    
    self.nameLa.frame = CGRectMake(30, 0, CGRectGetWidth(self.frame), 20);
    self.nameLa.text = self.model.model.name;
    [self addSubview:self.nameLa];
    self.ageLa.frame = CGRectMake(30, CGRectGetMaxY(self.nameLa.frame)+5, CGRectGetWidth(self.frame), 20);
    self.ageLa.text = [NSString stringWithFormat:@"%ld",(long)self.model.model.age];
    [self addSubview:self.ageLa];

    self.addressLa.frame = CGRectMake(30, CGRectGetMaxY(self.ageLa.frame)+5, CGRectGetWidth(self.frame), 20);
    self.addressLa.text = self.model.model.address;
    [self addSubview:self.addressLa];

}
#pragma -mark lazy
- (UILabel *)nameLa{
    if (nil == _nameLa) {
        _nameLa = [[UILabel alloc] init];
        _nameLa.backgroundColor = [UIColor clearColor];
        _nameLa.font = self.model.titleFont;
        _nameLa.textAlignment = NSTextAlignmentLeft;
        _nameLa.textColor = [UIColor redColor];
    }
    return _nameLa;
}
- (UILabel *)ageLa{
    if (nil == _ageLa) {
        _ageLa = [[UILabel alloc] init];
        _ageLa.backgroundColor = [UIColor clearColor];
        _ageLa.font = self.model.titleFont;
        _ageLa.textAlignment = NSTextAlignmentLeft;
        _ageLa.textColor = [UIColor redColor];

    }
    return _ageLa;
}
- (UILabel *)addressLa{
    if (nil == _addressLa) {
        _addressLa = [[UILabel alloc] init];
        _addressLa.backgroundColor = [UIColor clearColor];
        _addressLa.font = self.model.titleFont;
        _addressLa.textAlignment = NSTextAlignmentLeft;
        _addressLa.textColor = [UIColor redColor];

    }
    return _addressLa;
}
@end
