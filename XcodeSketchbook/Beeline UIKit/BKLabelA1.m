//
//  BKLabelA1.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 25.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKLabelA1.h"

// Helper
#import "BKFontConstructor.h"


@implementation BKLabelA1

- (void)configureAppearence
{
    [super configureAppearence];
    self.font = [BKFontConstructor A1font];
}

@end
