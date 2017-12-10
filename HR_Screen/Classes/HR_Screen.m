

#import "HR_Screen.h"

@implementation HR_Screen

+ (void)HR_RotateDirection:(HR_ScreenDirection)direction {
    
    UIInterfaceOrientation orientation = (direction == HR_ScreenLandscapeDirection ? UIInterfaceOrientationPortrait : UIInterfaceOrientationLandscapeRight);

    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}

@end
