//
//  ViewController.m
//  PushAnimationDemo
//
//  Created by CatchZeng on 15/5/23.
//  Copyright (c) 2015年 CatchZeng. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
#import "UINavigationController+PushAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"First";
}


- (IBAction)pushButtonClicked:(id)sender {
    PushViewController* vc = [[PushViewController alloc]init];
//    [self.navigationController pushViewController:vc animationType:CurlUp];
//    [self.navigationController pushViewController:vc animationType:CurlDown];
//    [self.navigationController pushViewController:vc animationType:FlipFromLeft];
    [self.navigationController pushViewController:vc animationType:FlipFromLeft duration:1.0];
//    [self.navigationController pushViewController:vc animationType:FlipFromRight];
//    [self.navigationController pushViewController:vc animationType:Reveal];
//    [self.navigationController pushViewController:vc animationType:MoveIn];
//    [self.navigationController pushViewController:vc animationType:Cube];
//    [self.navigationController pushViewController:vc animationType:SuckEffect];
//    [self.navigationController pushViewController:vc animationType:RippleEffect];
//    [self.navigationController pushViewController:vc animationType:PageCurl];
//    [self.navigationController pushViewController:vc animationType:PageUnCurl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
