//
//  BKLabelB1.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 25.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKLabelB1.h"

// Helper
#import "BKFontConstructor.h"


@implementation BKLabelB1

- (void)configureAppearence
{
    [super configureAppearence];
    self.font = [BKFontConstructor B1font];
}

@end
