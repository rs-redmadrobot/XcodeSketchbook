//
//  BKYellowNavigationController.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKYellowNavigationController.h"

// Helper
#import "UINavigationBar+BKYellowNavigationBar.h"
#import "UIToolbar+BKToolbar.h"


@implementation BKYellowNavigationController

+ (void)initialize
{
    if (self == [BKYellowNavigationController class]) {
        [self configureAppearance];
    }
}

+ (void)configureAppearance
{
    Class selfClass = [self class];

    // Navigation bar
    UINavigationBar<UIAppearance> *navigationBarAppearence =
    [UINavigationBar appearanceWhenContainedIn:selfClass, nil];
    [UINavigationBar BK_configureYellowBarAppeance:navigationBarAppearence];


    // Tool bar
    UIToolbar<UIAppearance> *toolbarAppearence =
    [UIToolbar appearanceWhenContainedIn:selfClass, nil];
    [UIToolbar BK_configureBarAppeance:toolbarAppearence];


    // Bar button item
    UIBarButtonItem<UIAppearance> *barButtonItemAppearence =
    [UIBarButtonItem appearanceWhenContainedIn:selfClass, nil];
    [UINavigationBar BK_configureYellowBarButtonItemsAppeance:barButtonItemAppearence];
    [UIToolbar BK_configureBarButtonItemsAppeance:barButtonItemAppearence];
}

- (void)prepareForInterfaceBuilder
{
    [[self class] initialize];
}

@end
