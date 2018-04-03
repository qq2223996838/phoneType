//
//  ViewController.m
//  phoneType
//
//  Created by mooer on 2018/4/3.
//  Copyright © 2018年 mooer. All rights reserved.
//

#import "ViewController.h"
#import "getPhoneType.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *phoneModelStr = [getPhoneType getPhoneModel];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 200, 200, 20)];
    label.text = [NSString stringWithFormat:@"此设备是：%@",phoneModelStr];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
