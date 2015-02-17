//
//  BKSlider.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKSlider.h"

// Constants
#import "BKConstants.h"

// Helper
#import "UIImage+BKBackgroundImages.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation BKSlider

- (void)configureAppearence
{
    UIImage *minTrackImage =
        [UIImage BK_resizableHorizontalLineImageWithRoundCapWidth:kBKSliderLineWidth
                                                            color:[UIColor BK_yellowColor]];
    
    [self setMinimumTrackImage:minTrackImage forState:UIControlStateNormal];
    
    UIImage *maxTrackImage =
        [UIImage BK_resizableHorizontalLineImageWithRoundCapWidth:kBKSliderLineWidth
                                                            color:[UIColor BK_grayColor]];
    
    [self setMaximumTrackImage:maxTrackImage
                      forState:UIControlStateNormal];
    
    UIImage *orangeCircle =
        [UIImage BK_circleImageWithBorderColor:nil
                               borderLineWidth:0.f
                                     fillColor:[UIColor BK_yellowColor]
                                      diameter:kBKSliderThumbImageDiameter];

    UIImage *orangeCircleHighlighted =
        [UIImage BK_circleImageWithBorderColor:nil
                               borderLineWidth:0.f
                                     fillColor:[UIColor BK_yellowColor]
                                      diameter:kBKSliderThumbImageDiameter + 3.f];

    [self setThumbImage:orangeCircle
               forState:UIControlStateNormal];
    [self setThumbImage:orangeCircleHighlighted
               forState:UIControlStateHighlighted];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) [self configureAppearence];
    
    return self;
}

- (void)awakeFromNib { [self configureAppearence]; }


#pragma mark - Properties

- (void)setShowIcons:(BOOL)showIcons
{
    _showIcons = showIcons;
   
    if (_showIcons) {
        self.minimumValueImage = [UIImage imageNamed:kBKSliderMinus];
        self.maximumValueImage = [UIImage imageNamed:kBKSliderPlus];
    } else {
        self.minimumValueImage = nil;
        self.maximumValueImage = nil;
    }
}


#pragma mark - IB_DESIGNABLE

- (void)prepareForInterfaceBuilder { [self configureAppearence]; }

@end
