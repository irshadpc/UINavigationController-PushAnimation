# UINavigationController-PushAnimation
Category of UINavigationController, a variety of push animation effects, and allows the definition of push animation time.

1.import  UINavigationController+PushAnimation.h file to you code.                                                        
2.replace pushViewController:animated: with pushViewController:animationType: or pushViewController:animationType:duration:

-(void)pushViewController:(UIViewController *)viewController animationType:(NSInteger)animationType;
-(void)pushViewController:(UIViewController *)viewController animationType:(NSInteger)animationType duration:(CGFloat)duration;

video:http://v.youku.com/v_show/id_XMTMyMzA2NzM4MA==.html?from=y1.7-1.2
