//
//  ViewController.m
//  QRCodeReader
//
//  Created by polycom on 2017/5/7.
//  Copyright © 2017年 xuyafei. All rights reserved.
//

#import "ViewController.h"
#import "ScanViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UIButton *scanButton;
@property(nonatomic, strong) UIButton *recognizeButton;
@property(nonatomic, strong) UIButton *createButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self configViews];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)configViews {
    _scanButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _scanButton.frame = CGRectMake(150, 100, 100, 50);
    [_scanButton setTitle:@"扫描二维码" forState:UIControlStateNormal];
    [_scanButton addTarget:self action:@selector(scan:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_scanButton];
    
    _recognizeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _recognizeButton.frame = CGRectMake(140, 150, 120, 50);
    [_recognizeButton setTitle:@"识别图片二维码" forState:UIControlStateNormal];
    [self.view addSubview:_recognizeButton];
    
    _createButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _createButton.frame = CGRectMake(150, 200, 100, 50);
    [_createButton setTitle:@"生成二维码" forState:UIControlStateNormal];
    [self.view addSubview:_createButton];
}

- (void)scan:(UIButton *)sender {
    NSLog(@"1111111");
    ScanViewController *scanViewController = [[ScanViewController alloc] init];
    [self.navigationController pushViewController:scanViewController animated:YES];
}


@end
