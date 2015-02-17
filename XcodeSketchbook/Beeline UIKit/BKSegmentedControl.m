//
//  BKSegmentedControl.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 17.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKSegmentedControl.h"

// Constants
#import "BKConstants.h"

// Helper
#import "BKFontConstructor.h"
#import "UIImage+BKBackgroundImages.h"

// Resources
#import "UIColor+BKStyle.h"


@implementation BKSegmentedControl

#pragma mark - Appearence

+ (void)configureAppearence:(UISegmentedControl<UIAppearance> *)segmentedControlAppearance
{
    // Title
    NSDictionary *textAttributes =
        @{
          NSFontAttributeName : [BKFontConstructor A4font],
          NSForegroundColorAttributeName : [UIColor BK_blackColor]
          };
    
    NSDictionary *accentTextAttributes =
        @{
          NSFontAttributeName : [BKFontConstructor B1font],
          NSForegroundColorAttributeName : [UIColor BK_blackColor]
          };
    
    [segmentedControlAppearance setTitleTextAttributes:textAttributes
                                              forState:UIControlStateNormal];
    
    
    [segmentedControlAppearance setTitleTextAttributes:accentTextAttributes
                                              forState:UIControlStateSelected];
    
    
    [segmentedControlAppearance setTitleTextAttributes:accentTextAttributes
                                              forState:UIControlStateHighlighted];
    
    UIEdgeInsets backgroundEdgeInsets = UIEdgeInsetsMake(4.f, 4.f, 4.f, 4.f);
    CGSize backgroundSize  = CGSizeMake(10.f, 10.f);
    CGFloat thinLineWidth  = 1.f;
    CGFloat thickLineWidth = 4.f;
    
    // Backgound
    UIImage *normal = [UIImage BK_segmentImageWithColor:[UIColor BK_grayColor]
                                        backgroundColor:[UIColor BK_whiteColor]
                                                   size:backgroundSize
                                              lineWidth:thinLineWidth];
    normal = [normal resizableImageWithCapInsets:backgroundEdgeInsets];
    
    UIImage *highlighted = [UIImage BK_segmentImageWithColor:[UIColor BK_grayColor]
                                             backgroundColor:[UIColor BK_lightYellowColor]
                                                        size:backgroundSize
                                                   lineWidth:thinLineWidth];
    highlighted = [highlighted resizableImageWithCapInsets:backgroundEdgeInsets];

    UIImage *selected = [UIImage BK_segmentImageWithColor:[UIColor BK_yellowColor]
                                          backgroundColor:[UIColor BK_whiteColor]
                                                     size:backgroundSize
                                                lineWidth:thickLineWidth];
    selected = [selected resizableImageWithCapInsets:backgroundEdgeInsets];
    
    [segmentedControlAppearance setBackgroundImage:normal
                                          forState:UIControlStateNormal
                                        barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setBackgroundImage:highlighted
                                          forState:UIControlStateHighlighted
                                        barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setBackgroundImage:highlighted
                                          forState:UIControlStateHighlighted|UIControlStateSelected
                                        barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setBackgroundImage:selected
                                          forState:UIControlStateSelected
                                        barMetrics:UIBarMetricsDefault];
    
    
    // Divider
    UIImage *divider = [UIImage BK_segmentDividerImageColor:[UIColor BK_grayColor]
                                                       size:CGSizeMake(1.f, 5.f)];
    divider = [divider resizableImageWithCapInsets:UIEdgeInsetsMake(2.f, 0.f, 2.f, 0.f)];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateNormal
                              rightSegmentState:UIControlStateNormal
                                     barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateNormal
                              rightSegmentState:UIControlStateHighlighted
                                     barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateNormal
                              rightSegmentState:UIControlStateSelected
                                     barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateHighlighted
                              rightSegmentState:UIControlStateNormal
                                     barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateSelected
                              rightSegmentState:UIControlStateNormal
                                     barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateHighlighted
                              rightSegmentState:UIControlStateSelected
                                     barMetrics:UIBarMetricsDefault];
    
    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateSelected
                              rightSegmentState:UIControlStateHighlighted
                                     barMetrics:UIBarMetricsDefault];

    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateSelected|UIControlStateHighlighted
                              rightSegmentState:UIControlStateNormal
                                     barMetrics:UIBarMetricsDefault];

    [segmentedControlAppearance setDividerImage:divider
                            forLeftSegmentState:UIControlStateNormal
                              rightSegmentState:UIControlStateSelected|UIControlStateHighlighted
                                     barMetrics:UIBarMetricsDefault];
}


#pragma mark - UISegmentedControl

+ (void)initialize { [self configureAppearence:[self appearance]]; }

- (CGSize)intrinsicContentSize
{
    CGSize size = [super intrinsicContentSize];
    size.height = kBKSegmentedControlDefaultHeight;
    return size;
}

@end
