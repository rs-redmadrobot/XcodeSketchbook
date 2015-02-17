//
//  BKLabelA5.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 16.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKLabelA5.h"

// Helper
#import "BKFontConstructor.h"


@implementation BKLabelA5

- (void)configureAppearence
{
    [super configureAppearence];
    self.font = [BKFontConstructor A5font];
}

@end
