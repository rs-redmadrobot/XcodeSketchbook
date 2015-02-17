//
//  BKNavigationBar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKNavigationBar.h"

// Helper
#import "UINavigationBar+BKNavigationBar.h"


@implementation BKNavigationBar

+ (void)initialize
{
    if (self == [BKNavigationBar class]) {
        
        // Navigation Bar
        BKNavigationBar<UIAppearance> *navigationBarAppearence = [self appearance];
        [self BK_configureBarAppeance:navigationBarAppearence];
        
        
        // Bar button item
        UIBarButtonItem<UIAppearance> *barButtonItemAppearence =
            [UIBarButtonItem appearanceWhenContainedIn:[self class], nil];
        
        [self BK_configureBarButtonItemsAppeance:barButtonItemAppearence];
    }
}

@end
