//
//  UITabBar+BKTabBar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "UITabBar+BKTabBar.h"

// Resources
#import "UIColor+BKStyle.h"
#import "BKFontConstructor.h"


@implementation UITabBar (BKTabBar)

+ (void)BK_configureTabBarAppearence:(UITabBar<UIAppearance> *)tabBarAppearence
{
    tabBarAppearence.barTintColor = [UIColor BK_blackColor];
    tabBarAppearence.tintColor    = [UIColor BK_yellowColor];
    tabBarAppearence.shadowImage  = [UIImage new];
    
    [tabBarAppearence BK_changeTabBarTranslucency:@NO];
}

+ (void)BK_configureTabBarItemsAppearence:(UITabBarItem<UIAppearance> *)tabBarItemAppearence
{
    NSDictionary *tabBarItemNormal =
        @{NSFontAttributeName : [BKFontConstructor B2font]};
    
    [tabBarItemAppearence setTitleTextAttributes:tabBarItemNormal
                                        forState:UIControlStateNormal];
}

- (void)BK_changeTabBarTranslucency:(NSNumber *)translucent UI_APPEARANCE_SELECTOR
{
    self.translucent = [translucent boolValue];
}

@end
