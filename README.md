# UINavigationController-PushAnimation
Category of UINavigationController, a variety of push animation effects, and allows the definition of push animation time.

1.import  UINavigationController+PushAnimation.h file to you code.                                                        
2.replace pushViewController:animated: with pushViewController:animationType: or pushViewController:animationType:duration:

![screen shot 1](https://github.com/catchZeng/UINavigationController-PushAnimation/tree/master/Images/1.png) 
![screen shot 2](https://github.com/catchZeng/UINavigationController-PushAnimation/tree/master/Images/2.png) 
![screen shot 3](https://github.com/catchZeng/UINavigationController-PushAnimation/tree/master/Images/3.png) 


-(void)pushViewController:(UIViewController *)viewController animationType:(NSInteger)animationType;
-(void)pushViewController:(UIViewController *)viewController animationType:(NSInteger)animationType duration:(CGFloat)duration;
