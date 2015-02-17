//
//  BKTabBarController.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKTabBarController.h"

// Helper
#import "UITabBar+BKTabBar.h"


@implementation BKTabBarController

+ (void)initialize
{
    if (self == [BKTabBarController class]) {
        
        Class selfClass = [self class];
        
        // Tab bar
        UITabBar<UIAppearance> *tabBarAppearence =
            [UITabBar appearanceWhenContainedIn:selfClass, nil];
        [UITabBar BK_configureTabBarAppearence:tabBarAppearence];
        
        // Tab bar item
        UITabBarItem<UIAppearance> *tabBarItemAppearence =
            [UITabBarItem appearanceWhenContainedIn:selfClass, nil];
        
        [UITabBar BK_configureTabBarItemsAppearence:tabBarItemAppearence];
    }
}

- (void)prepareForInterfaceBuilder
{
    [[self class] initialize];
}

@end
