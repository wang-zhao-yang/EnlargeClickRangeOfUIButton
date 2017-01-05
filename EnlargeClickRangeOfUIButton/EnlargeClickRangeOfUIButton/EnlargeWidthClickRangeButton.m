//
//  EnlargeWidthClickRangeButton.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "EnlargeWidthClickRangeButton.h"

@implementation EnlargeWidthClickRangeButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = CGRectInset(self.bounds, -30, 0);
    return CGRectContainsPoint(bounds, point);
}

@end
