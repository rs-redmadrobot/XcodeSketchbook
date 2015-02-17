//
//  UIToolbar+BKToolbar.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 23.10.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "UIToolbar+BKToolbar.h"

// Helper
#import "BKFontConstructor.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation UIToolbar (BKToolbar)

+ (void)BK_configureBarAppeance:(UIToolbar<UIAppearance> *)navigationBarAppearence
{
    navigationBarAppearence.tintColor = [UIColor BK_yellowColor];
    navigationBarAppearence.barTintColor = [UIColor BK_whiteColor];    
}

+ (void)BK_configureBarButtonItemsAppeance:(UIBarButtonItem<UIAppearance> *)barButtonItemAppearence
{
    NSDictionary *barButtonItemTitleTextAttributes =
        @{NSFontAttributeName : [BKFontConstructor A3font]};
    
    [barButtonItemAppearence setTitleTextAttributes:barButtonItemTitleTextAttributes
                                           forState:UIControlStateNormal];
}

@end
