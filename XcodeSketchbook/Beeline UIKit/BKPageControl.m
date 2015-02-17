//
//  BKPageControl.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 15/10/14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKPageControl.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation BKPageControl

+ (void)configureAppearence:(BKPageControl<UIAppearance> *)pageControlAppearence
{
    pageControlAppearence.pageIndicatorTintColor = [UIColor BK_lightGrayColor];
    pageControlAppearence.currentPageIndicatorTintColor = [UIColor BK_yellowColor];
}

+ (void)initialize { [self configureAppearence:[self appearance]]; }

@end
