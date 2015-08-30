//
//  UINavigationController+PushAnimation.m
//  PushAnimation
//
//  Created by CatchZeng on 15/5/23.
//  Copyright (c) 2015年 CatchZeng. All rights reserved.
//

#define kDuration 0.5   //animation duration

#import "UINavigationController+PushAnimation.h"

@implementation UINavigationController (PushAnimation)

-(void)pushViewController:(UIViewController *)viewController animationType:(PushAnimation)animationType{
    [self pushViewController:viewController animationType:animationType duration:kDuration];
}

-(void)pushViewController:(UIViewController *)viewController animationType:(PushAnimation)animationType duration:(CGFloat)duration{
    //handle unkown type
    if (animationType < CurlUp || animationType > PageUnCurl) {
        [self pushViewController:viewController animated:YES];
        return;
    }
    
    if (animationType < Reveal) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        [UIView beginAnimations:nil context:context];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDuration:duration];
        switch (animationType) {
            case CurlUp:
                [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
                break;
            case CurlDown:
                [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
                break;
            case FlipFromLeft:
                [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
                break;
            case FlipFromRight:
                [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
                break;
            default:
                break;
        }
        [self pushViewController:viewController animated:NO];
        [UIView commitAnimations];
        
    }else{
        CATransition *animation = [CATransition animation];
        animation.delegate = self;
        animation.duration = duration;
        animation.timingFunction = UIViewAnimationCurveEaseInOut;
        
        switch (animationType) {
            case Reveal:
                animation.type = kCATransitionReveal;
                break;
            case MoveIn:
                animation.type = kCATransitionMoveIn;
                break;
            case Cube:
                animation.type = @"cube";
                break;
            case SuckEffect:
                animation.type = @"suckEffect";
                break;
            case RippleEffect:
                animation.type = @"rippleEffect";
                break;
            case PageCurl:
                animation.type = @"pageCurl";
                break;
            case PageUnCurl:
                animation.type = @"pageUnCurl";
                break;
            default:
                break;
        }
        animation.subtype = kCATransitionFromLeft;
        
        [self pushViewController:viewController animated:NO];
        [[self.view layer] addAnimation:animation forKey:@"animation"];
    }
}

@end