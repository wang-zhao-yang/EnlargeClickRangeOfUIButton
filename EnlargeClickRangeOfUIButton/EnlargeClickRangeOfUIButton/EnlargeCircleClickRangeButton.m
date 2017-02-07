//
//  EnlargeCircleClickRangeButton.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/2/7.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "EnlargeCircleClickRangeButton.h"

@implementation EnlargeCircleClickRangeButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event {
    CGRect bounds = CGRectInset(self.bounds, -20, -20);
    return CGRectContainsPoint(bounds, point);
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    [super hitTest:point withEvent:event];
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGPoint center = CGPointMake(width / 2, height / 2);
    CGFloat raidus = (height >= width ? width / 2 : height / 2) + 20;
    BOOL pointInRound = [self touchPointInsideCircle:center radius:raidus targetPoint:point];
    if (pointInRound) {
        return self;
    } else {
        return nil;
    }
}

- (BOOL)touchPointInsideCircle:(CGPoint)center radius:(CGFloat)radius targetPoint:(CGPoint)point {
    CGFloat dist = sqrtf((point.x - center.x) * (point.x - center.x) + (point.y - center.y) * (point.y - center.y));
    return (dist <= radius);
}

@end
