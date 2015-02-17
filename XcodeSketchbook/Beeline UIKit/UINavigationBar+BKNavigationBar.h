//
//  UINavigationBar+BKNavigationBar.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 02.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UINavigationBar (BKNavigationBar)

+ (void)BK_configureBarAppeance:(UINavigationBar<UIAppearance> *)navigationBarAppearence;

+ (void)BK_configureBarButtonItemsAppeance:(UIBarButtonItem<UIAppearance> *)barButtonItemAppearence;

@end
