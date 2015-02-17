//
//  BKSwitch.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKSwitch.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation BKSwitch

+ (void)customizeAppearence:(UISwitch<UIAppearance> *)switchAppearence
{
    switchAppearence.onTintColor = [UIColor BK_yellowColor];
    switchAppearence.tintColor   = [UIColor BK_grayColor];
}

+ (void)initialize { [self customizeAppearence:[self appearance]]; }


#pragma mark - IB_DESIGNABLE

- (void)prepareForInterfaceBuilder { [[self class] customizeAppearence:self]; }

@end
