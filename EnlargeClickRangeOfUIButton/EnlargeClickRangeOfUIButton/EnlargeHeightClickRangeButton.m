//
//  EnlargeHeightClickRangeButton.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "EnlargeHeightClickRangeButton.h"

@implementation EnlargeHeightClickRangeButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = CGRectInset(self.bounds, 0, -20);
    return CGRectContainsPoint(bounds, point);
}

@end
