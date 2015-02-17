//
//  BKNavigationController.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKNavigationController.h"

// Helper
#import "UINavigationBar+BKNavigationBar.h"
#import "UIToolbar+BKToolbar.h"


@implementation BKNavigationController

+ (void)initialize
{
    if (self == [BKNavigationController class]) {
        
        Class selfClass = [self class];
        
        // Navigation bar
        UINavigationBar<UIAppearance> *navigationBarAppearence =
            [UINavigationBar appearanceWhenContainedIn:selfClass, nil];
        [UINavigationBar BK_configureBarAppeance:navigationBarAppearence];
        
        
        // Tool bar
        UIToolbar<UIAppearance> *toolbarAppearence =
            [UIToolbar appearanceWhenContainedIn:selfClass, nil];
        [UIToolbar BK_configureBarAppeance:toolbarAppearence];

        
        // Bar button item
        UIBarButtonItem<UIAppearance> *barButtonItemAppearence =
            [UIBarButtonItem appearanceWhenContainedIn:selfClass, nil];
        [UINavigationBar BK_configureBarButtonItemsAppeance:barButtonItemAppearence];
        [UIToolbar BK_configureBarButtonItemsAppeance:barButtonItemAppearence];
    }
}

- (void)prepareForInterfaceBuilder
{
    [[self class] initialize];
}

@end
