//
//  UIToolbar+BKToolbar.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 23.10.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

@import UIKit;


@interface UIToolbar (BKToolbar)

+ (void)BK_configureBarAppeance:(UIToolbar<UIAppearance> *)navigationBarAppearence;

+ (void)BK_configureBarButtonItemsAppeance:(UIBarButtonItem<UIAppearance> *)barButtonItemAppearence;

@end
