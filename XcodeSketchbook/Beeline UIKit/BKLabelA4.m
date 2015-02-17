//
//  BKLabelA4.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 25.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKLabelA4.h"

// Helper
#import "BKFontConstructor.h"


@implementation BKLabelA4

- (void)configureAppearence
{
    [super configureAppearence];
    self.font = [BKFontConstructor A4font];
}

@end
