//
//  UITabBar+BKTabBar.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UITabBar (BKTabBar)

+ (void)BK_configureTabBarAppearence:(UITabBar<UIAppearance> *)tabBarAppearence;

+ (void)BK_configureTabBarItemsAppearence:(UITabBarItem<UIAppearance> *)tabBarItemAppearence;

@end
