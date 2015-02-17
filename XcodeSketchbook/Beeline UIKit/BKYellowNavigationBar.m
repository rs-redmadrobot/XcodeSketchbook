//
//  BKYellowNavigationBar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKYellowNavigationBar.h"

// Helper
#import "UINavigationBar+BKYellowNavigationBar.h"


@implementation BKYellowNavigationBar

+ (void)initialize
{
    if (self == [BKYellowNavigationBar class]) {
        
        // Navigation Bar
        BKYellowNavigationBar<UIAppearance> *navigationBarAppearence = [self appearance];
        [self BK_configureYellowBarAppeance:navigationBarAppearence];
        
        
        // Bar button item
        UIBarButtonItem<UIAppearance> *barButtonItemAppearence =
            [UIBarButtonItem appearanceWhenContainedIn:[self class], nil];
        
        [self BK_configureYellowBarButtonItemsAppeance:barButtonItemAppearence];
    }
}

@end
