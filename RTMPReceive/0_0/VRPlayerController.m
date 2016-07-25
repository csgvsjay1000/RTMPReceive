//
//  VRPlayerController.m
//  RTMPReceive
//
//  Created by chengshenggen on 7/25/16.
//  Copyright © 2016 Gan Tian. All rights reserved.
//

#import "VRPlayerController.h"

@interface VRPlayerController ()

@property(nonatomic,strong)UIButton *backButton;

@end

@implementation VRPlayerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.backButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button response
-(void)backButtonActions{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - setters and getters
-(UIButton *)backButton{
    if (_backButton == nil) {
        _backButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_backButton setTitle:@"返回" forState:UIControlStateNormal];
        _backButton.frame = CGRectMake(0, 20, 60, 30);
        [_backButton addTarget:self action:@selector(backButtonActions) forControlEvents:UIControlEventTouchUpInside];
    }
    return _backButton;
}

@end
