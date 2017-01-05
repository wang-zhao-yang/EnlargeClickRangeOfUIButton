//
//  ZYButton.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "ZYButton.h"

@implementation ZYButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

/**
 * 这个函数的用处是判断当前的点击或者触摸事件的点是否在当前的 view 上
 
 * 它被 hitTest: withEvent: 调用，通过对每个子视图调用 pointInside: withEvent: 决定最终哪个视图来响应事件。如果 pointInside: withEvent: 返回 YES，则子视图的继承树就会被遍历（遍历顺序中最先响应的是与用户最接近的那个视图），子视图的子视图继续调用递归这个函数，直到找到可以响应事件的子视图（这个子视图的 hitTest: withEvent: 返回 self，其它子视图则会返回 nil）；如果 pointInside: withEvent: 返回 NO，则视图的继承树就会被忽略。
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    // 通过修改 bounds 的 x、y 值就可以向 X 轴或者 Y 轴的某一个方向扩展
    // 当 bounds 的 x、y 值为负，则向 X 轴或者 Y 轴的正方向扩展点击区域；反之，则向 X 轴或者 Y 轴的负方向扩展点击区域
    CGRect bounds = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    // 通过第二个参数 dx 和第三个参数 dy 重置第一个参数 rect 作为结果返回。重置的方式为：首先将 rect 的坐标（origin）按照（dx, dy）进行平移，然后将 rect 的大小（size）宽度缩小 2 倍的 dx，高度缩小 2 倍的 dy
    bounds = CGRectInset(bounds, 0, 0);
    return CGRectContainsPoint(bounds, point);
}

@end
