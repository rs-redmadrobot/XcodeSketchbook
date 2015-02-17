//
//  BKLabel.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 12.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKLabel.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation BKLabel

- (void)configureAppearence {}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) [self configureAppearence];
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) [self configureAppearence];

    return self;
}


#pragma mark - IB_DESIGNABLE

- (void)prepareForInterfaceBuilder { [self configureAppearence]; }

@end
