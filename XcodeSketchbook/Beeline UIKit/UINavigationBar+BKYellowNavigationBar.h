//
//  UINavigationBar+BKYellowNavigationBar.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UINavigationBar (BKYellowNavigationBar)

+ (void)BK_configureYellowBarAppeance:(UINavigationBar<UIAppearance> *)navigationBarAppearence;

+ (void)BK_configureYellowBarButtonItemsAppeance:(UIBarButtonItem<UIAppearance> *)barButtonItemAppearence;

@end
