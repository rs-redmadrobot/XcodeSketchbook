//
//  UINavigationBar+BKNavigationBar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "UINavigationBar+BKNavigationBar.h"

// Helper
#import "BKFontConstructor.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation UINavigationBar (BKNavigationBar)

+ (void)BK_configureBarAppeance:(UINavigationBar<UIAppearance> *)navigationBarAppearence
{
    navigationBarAppearence.backIndicatorImage = [UIImage imageNamed:@"back-y"];
    navigationBarAppearence.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"back-mask"];
    
    navigationBarAppearence.tintColor = [UIColor BK_yellowColor];
    navigationBarAppearence.barTintColor = [UIColor BK_whiteColor];
    
    NSDictionary *navBarTitleTextAttributes =
        @{
          NSFontAttributeName : [BKFontConstructor A1font],
          NSForegroundColorAttributeName : [UIColor BK_blackColor]
          };
    
    navigationBarAppearence.titleTextAttributes = navBarTitleTextAttributes;
}

+ (void)BK_configureBarButtonItemsAppeance:(UIBarButtonItem<UIAppearance> *)barButtonItemAppearence
{
    NSDictionary *barButtonItemTitleTextAttributes =
        @{NSFontAttributeName : [BKFontConstructor A3font]};
    
    [barButtonItemAppearence setTitleTextAttributes:barButtonItemTitleTextAttributes
                                           forState:UIControlStateNormal];
}

@end
