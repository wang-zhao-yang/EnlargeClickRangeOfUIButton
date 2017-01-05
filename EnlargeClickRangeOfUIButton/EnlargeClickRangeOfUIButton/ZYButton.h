//
//  ZYButton.h
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYButton : UIButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event;

@end
