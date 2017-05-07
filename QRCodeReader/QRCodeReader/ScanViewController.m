//
//  ScanViewController.m
//  QRCodeReader
//
//  Created by polycom on 2017/5/7.
//  Copyright © 2017年 xuyafei. All rights reserved.
//

#import "ScanViewController.h"

@interface ScanViewController ()

@end

@implementation ScanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"扫描二维码";
    [self configTitleView];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configTitleView {
    UIBarButtonItem *rightItme = [[UIBarButtonItem alloc] initWithTitle:@"打开手电筒" style:UIBarButtonItemStyleDone target:self action:@selector(done:)];
   // self.navigationController.navigationItem.rightBarButtonItem = rightItme;
    self.navigationItem.rightBarButtonItem = rightItme;
}

- (void)done:(UIBarButtonItem *)sender {
    NSLog(@"2222222");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
