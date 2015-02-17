//
//  BKTabBar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKTabBar.h"

// Helper
#import "UITabBar+BKTabBar.h"


@implementation BKTabBar

+ (void)initialize
{
    if (self == [BKTabBar class]) {
        
        // Navigation Bar
        BKTabBar<UIAppearance> *tabBarAppearence = [self appearance];
        [self BK_configureTabBarAppearence:tabBarAppearence];
        
        
        // Bar button item
        UITabBarItem<UIAppearance> *tabBarItemAppearence =
            [UITabBarItem appearanceWhenContainedIn:[self class], nil];
        
        [UITabBar BK_configureTabBarItemsAppearence:tabBarItemAppearence];
    }
}

@end
