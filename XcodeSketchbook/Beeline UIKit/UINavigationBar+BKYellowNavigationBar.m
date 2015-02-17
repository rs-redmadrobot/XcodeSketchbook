//
//  UINavigationBar+BKYellowNavigationBar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "UINavigationBar+BKYellowNavigationBar.h"

// Helper
#import "BKFontConstructor.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation UINavigationBar (BKYellowNavigationBar)

+ (void)BK_configureYellowBarAppeance:(UINavigationBar<UIAppearance> *)navigationBarAppearence
{
    navigationBarAppearence.backIndicatorImage = [UIImage imageNamed:@"back-y"];
    navigationBarAppearence.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"back-mask"];
    
    navigationBarAppearence.tintColor    = [UIColor BK_whiteColor];
    navigationBarAppearence.barTintColor = [UIColor BK_yellowColor];
    
    navigationBarAppearence.shadowImage = [UIImage new];
    
    
    NSDictionary *navBarTitleTextAttributes =
        @{
          NSFontAttributeName : [BKFontConstructor A1font],
          NSForegroundColorAttributeName : [UIColor BK_blackColor]
          };
    
    navigationBarAppearence.titleTextAttributes = navBarTitleTextAttributes;
    
    [navigationBarAppearence BK_changeNavigationBarTranslucency:@NO];
}

+ (void)BK_configureYellowBarButtonItemsAppeance:(UIBarButtonItem<UIAppearance> *)barButtonItemAppearence
{
    NSDictionary *barButtonItemTitleTextAttributes =
        @{NSFontAttributeName : [BKFontConstructor A3font]};
    
    [barButtonItemAppearence setTitleTextAttributes:barButtonItemTitleTextAttributes
                                           forState:UIControlStateNormal];
}

- (void)BK_changeNavigationBarTranslucency:(NSNumber *)translucent UI_APPEARANCE_SELECTOR
{
    self.translucent = [translucent boolValue];
}

@end
