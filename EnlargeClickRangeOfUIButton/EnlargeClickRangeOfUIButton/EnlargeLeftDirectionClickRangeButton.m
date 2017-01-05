//
//  EnlargeLeftDirectionClickRangeButton.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "EnlargeLeftDirectionClickRangeButton.h"

@implementation EnlargeLeftDirectionClickRangeButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = CGRectMake(60, -40, self.bounds.size.width, self.bounds.size.height);
    bounds = CGRectInset(bounds, -30, -20);
    return CGRectContainsPoint(bounds, point);
}

@end
