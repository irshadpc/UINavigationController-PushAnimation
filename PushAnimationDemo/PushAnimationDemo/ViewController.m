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
#import "PushTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController
{
    NSArray* _arrayAnimationType;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"First";
    
    //avoid background is black when animation type is FlipFromLeft/FlipFromRight.
    //you also can set your custom beautiful background color/image.
    //[UIApplication sharedApplication].keyWindow.backgroundColor =[UIColor whiteColor];
    [UIApplication sharedApplication].keyWindow.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"1"]];
    
    [self initData];
}

-(void)initData{
    _arrayAnimationType = [NSArray arrayWithObjects:@"CurlUp", @"CurlDown", @"FlipFromLeft", @"FlipFromRight", @"Reveal", @"MoveIn", @"Cube", @"SuckEffect",@"RippleEffect",@"PageCurl",@"PageUnCurl",nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayAnimationType.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PushTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"PushAnimationCellId"];
    cell.title.text = [_arrayAnimationType objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PushViewController* vc = [[PushViewController alloc]init];
    switch (indexPath.row) {
        case CurlUp:
            [self.navigationController pushViewController:vc animationType:CurlUp];
            break;
        case CurlDown:
            [self.navigationController pushViewController:vc animationType:CurlDown];
            break;
        case FlipFromLeft:
            [self.navigationController pushViewController:vc animationType:FlipFromLeft];
            break;
        case FlipFromRight:
            [self.navigationController pushViewController:vc animationType:FlipFromRight];
            break;
        case Reveal:
            [self.navigationController pushViewController:vc animationType:Reveal];
            break;
        case MoveIn:
            [self.navigationController pushViewController:vc animationType:MoveIn];
            break;
        case Cube:
            [self.navigationController pushViewController:vc animationType:Cube];
            break;
        case SuckEffect:
            [self.navigationController pushViewController:vc animationType:SuckEffect];
            break;
        case RippleEffect:
            [self.navigationController pushViewController:vc animationType:RippleEffect];
            break;
        case PageCurl:
            [self.navigationController pushViewController:vc animationType:PageCurl];
            break;
        case PageUnCurl:
            [self.navigationController pushViewController:vc animationType:PageUnCurl];
            break;
        default:
            [self.navigationController pushViewController:vc animationType:CurlUp];
            break;
    }
}

@end