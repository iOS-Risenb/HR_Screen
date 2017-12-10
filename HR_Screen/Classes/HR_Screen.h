
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, HR_ScreenDirection) {
    HR_ScreenPortraitDirection,   // 竖屏（人像）
    HR_ScreenLandscapeDirection   // 横屏（风景）
};

@interface HR_Screen : NSObject

/** 旋转屏幕 */
+ (void)HR_RotateDirection:(HR_ScreenDirection)direction;

@end
