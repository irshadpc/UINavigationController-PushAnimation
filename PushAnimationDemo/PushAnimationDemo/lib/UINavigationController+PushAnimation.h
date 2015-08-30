//
//  UINavigationController+PushAnimation.h
//  PushAnimation
//
//  Created by CatchZeng on 15/5/23.
//  Copyright (c) 2015年 CatchZeng. All rights reserved.
//

/**
 *  1.import  UINavigationController+PushAnimation.h file to you code
 *  2.replace pushViewController:animated: with pushViewController:animationType:
 */

#import <UIKit/UIKit.h>

//push animation type
typedef NS_ENUM(NSInteger,PushAnimation)
{
    CurlUp = 0,
    CurlDown = 1,
    FlipFromLeft = 2,
    FlipFromRight = 3,
    Reveal = 4,
    MoveIn =5,
    Cube = 6,
    SuckEffect = 7,
    RippleEffect = 8,
    PageCurl = 9,
    PageUnCurl = 10
};

@interface UINavigationController (PushAnimation)

/**
 *  push with animation
 *
 *  @param viewController  the view ctrl you want to push
 *  @param animationType   see PushAnimation enum
 *  defalut animation duration is 0.5s
 */
-(void)pushViewController:(UIViewController *)viewController animationType:(PushAnimation)animationType;

/**
 *  push with animation
 *
 *  @param viewController  the view ctrl you want to push
 *  @param animationType   see PushAnimation enum
 *  @param duration        animation duration
 */
-(void)pushViewController:(UIViewController *)viewController animationType:(PushAnimation)animationType duration:(CGFloat)duration;

@end