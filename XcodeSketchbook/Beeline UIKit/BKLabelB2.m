//
//  BKLabelB2.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 25.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKLabelB2.h"

// Helper
#import "BKFontConstructor.h"


@implementation BKLabelB2

- (void)configureAppearence
{
    [super configureAppearence];
    self.font = [BKFontConstructor B2font];
}

@end
