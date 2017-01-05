//
//  EnlargeBottomDirectionClickRangeButton.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "EnlargeBottomDirectionClickRangeButton.h"

@implementation EnlargeBottomDirectionClickRangeButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = CGRectMake(0, 40, self.bounds.size.width, self.bounds.size.height);
    bounds = CGRectInset(bounds, 0, -20);
    return CGRectContainsPoint(bounds, point);
}

@end
