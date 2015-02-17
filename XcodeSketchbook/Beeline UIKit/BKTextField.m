//
//  BKTextField.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKTextField.h"

// Resources
#import "BKFontConstructor.h"
#import "UIColor+BKStyle.h"


@interface BKTextField ()

#pragma mark - Prtoperties

@property (nonatomic, copy) UIColor *enabledColor;

@end


@implementation BKTextField

- (void)configureAppearence
{
    self.font = [BKFontConstructor A3font];
    
    self.disabledTextColor = [UIColor BK_grayColor];
    
    if (self.enabled) self.textColor = [UIColor BK_blackColor];
    else self.textColor = self.disabledTextColor;
    
    self.borderStyle = UITextBorderStyleNone;
    
    self.tintColor = [UIColor BK_yellowColor];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) [self configureAppearence];
    
    return self;
}

- (void)awakeFromNib { [self configureAppearence];}


#pragma mark - Properties

- (void)setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    
    if (enabled) {
        if (self.enabledColor) self.textColor = self.enabledColor;
        else self.textColor = [UIColor BK_blackColor];
    } else {
        self.enabledColor = self.textColor;
        self.textColor    = self.disabledTextColor;
    }
}

- (void)setDisabledTextColor:(UIColor *)disabledTextColor
{
    _disabledTextColor = disabledTextColor;
    
    if (!self.enabled) self.textColor = disabledTextColor;
}


#pragma mark - IB_DESIGNABLE

- (void)prepareForInterfaceBuilder { [self configureAppearence]; }

@end
