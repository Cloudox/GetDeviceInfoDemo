//
//  ViewController.m
//  GetDeviceInfoDemo
//
//  Created by csdc-iMac on 15/12/17.
//  Copyright (c) 2015年 csdc. All rights reserved.
//

#import "ViewController.h"

//设备的宽高
#define SCREENHEIGHT      [UIScreen mainScreen].bounds.size.height
#define SCREENWIDTH       [UIScreen mainScreen].bounds.size.width

// 根据屏幕分辨率判断设备，是则返回1，不是返回0
#define isiPhone5or5sor5c ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define isiPhone6or6s ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define isiPhone6plusor6splus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)

// 设备的系统版本
#define SystemVersion ([[UIDevice currentDevice] systemVersion])

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *deviceLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 200, 200, 20)];
    if (isiPhone5or5sor5c) {
        deviceLabel.text = @"这是 iPhone5 或 5s 或 5c";
    } else if (isiPhone6or6s) {
        deviceLabel.text = @"这是 iPhone6 或 6s";
    } else if (isiPhone6plusor6splus) {
        deviceLabel.text = @"这是 iPhone6plus 或6splus";
    }
    deviceLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:deviceLabel];
    
    UILabel *systemLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 300, 200, 20)];
    systemLabel.text = [NSString stringWithFormat:@"当前运行系统为：iOS%@", SystemVersion];
    systemLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:systemLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
