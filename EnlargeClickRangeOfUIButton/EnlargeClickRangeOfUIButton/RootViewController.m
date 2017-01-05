//
//  RootViewController.m
//  EnlargeClickRangeOfUIButton
//
//  Created by chuanglong03 on 2017/1/5.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#define DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#define BUTTON_WIDTH 100
#define BUTTON_HEIGHT 30
#define ENLARGE_WIDTH 60
#define ENLARGE_HEIGHT 40

#import "RootViewController.h"
#import "NextViewController.h"
#import "ZYButton.h"
#import "EnlargeAllDirectionClickRangeButton.h"
#import "EnlargeWidthClickRangeButton.h"
#import "EnlargeHeightClickRangeButton.h"
#import "EnlargeLeftDirectionClickRangeButton.h"
#import "EnlargeRightDirectionClickRangeButton.h"
#import "EnlargeTopDirectionClickRangeButton.h"
#import "EnlargeBottomDirectionClickRangeButton.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI {
    [self setupEnlargeAllDirectionClickRangeButton];
    [self setupEnlargeWidthClickRangeButton];
    [self setupEnlargeHeightClickRangeButton];
    [self setupEnlargeTopDirectionClickRangeButton];
    [self setupEnlargeBottomDirectionClickRangeButton];
    [self setupEnlargeLeftDirectionClickRangeButton];
    [self setupEnlargeRightDirectionClickRangeButton];
}

- (void)setupEnlargeAllDirectionClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH - ENLARGE_WIDTH) / 2.0, 30, BUTTON_WIDTH + ENLARGE_WIDTH, BUTTON_HEIGHT + ENLARGE_HEIGHT);
    EnlargeAllDirectionClickRangeButton *btn = [[EnlargeAllDirectionClickRangeButton alloc] initWithFrame:CGRectMake(ENLARGE_WIDTH / 2.0, ENLARGE_HEIGHT / 2.0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupEnlargeWidthClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH - ENLARGE_WIDTH) / 2.0, 130, BUTTON_WIDTH + ENLARGE_WIDTH, BUTTON_HEIGHT);
    EnlargeWidthClickRangeButton *btn = [[EnlargeWidthClickRangeButton alloc] initWithFrame:CGRectMake(ENLARGE_WIDTH / 2.0, 0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupEnlargeHeightClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH) / 2.0, 190, BUTTON_WIDTH, BUTTON_HEIGHT + ENLARGE_HEIGHT);
    EnlargeAllDirectionClickRangeButton *btn = [[EnlargeAllDirectionClickRangeButton alloc] initWithFrame:CGRectMake(0, ENLARGE_HEIGHT / 2.0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupEnlargeTopDirectionClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH) / 2.0, 290, BUTTON_WIDTH, BUTTON_HEIGHT + ENLARGE_HEIGHT / 2.0);
    EnlargeAllDirectionClickRangeButton *btn = [[EnlargeAllDirectionClickRangeButton alloc] initWithFrame:CGRectMake(0, ENLARGE_HEIGHT / 2.0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupEnlargeBottomDirectionClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH) / 2.0, 370, BUTTON_WIDTH, BUTTON_HEIGHT + ENLARGE_HEIGHT / 2.0);
    EnlargeAllDirectionClickRangeButton *btn = [[EnlargeAllDirectionClickRangeButton alloc] initWithFrame:CGRectMake(0, 0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupEnlargeLeftDirectionClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH - ENLARGE_WIDTH) / 2.0, 450, BUTTON_WIDTH + ENLARGE_WIDTH / 2.0, BUTTON_HEIGHT + ENLARGE_HEIGHT / 2.0);
    EnlargeAllDirectionClickRangeButton *btn = [[EnlargeAllDirectionClickRangeButton alloc] initWithFrame:CGRectMake(ENLARGE_WIDTH / 2.0, ENLARGE_HEIGHT / 2.0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupEnlargeRightDirectionClickRangeButton {
    CGRect rect = CGRectMake((DEVICE_WIDTH - BUTTON_WIDTH) / 2.0, 530, BUTTON_WIDTH + ENLARGE_WIDTH / 2.0, BUTTON_HEIGHT + ENLARGE_HEIGHT / 2.0);
    EnlargeAllDirectionClickRangeButton *btn = [[EnlargeAllDirectionClickRangeButton alloc] initWithFrame:CGRectMake(0, 0, BUTTON_WIDTH, BUTTON_HEIGHT)];
    [self setupGreenViewWithFrame:rect button:btn];
}

- (void)setupGreenViewWithFrame:(CGRect)rect button:(ZYButton *)btn {
    UIView *greenView = [self setupGreenViewWithFrame:rect];
    [self.view addSubview:greenView];
    [btn addTarget:self action:@selector(enterNextVC) forControlEvents:(UIControlEventTouchUpInside)];
    [greenView addSubview:btn];
}

- (UIView *)setupGreenViewWithFrame:(CGRect)frame {
    UIView *greenView = [[UIView alloc] initWithFrame:frame];
    greenView.backgroundColor = [UIColor greenColor];
    return greenView;
}

- (void)enterNextVC {
    NextViewController *nextVC = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

@end
