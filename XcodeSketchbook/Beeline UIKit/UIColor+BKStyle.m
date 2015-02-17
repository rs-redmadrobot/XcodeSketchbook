//
//  UIColor+BKStyle.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 26.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "UIColor+BKStyle.h"


#pragma mark - Structs

struct BKColorStruct {
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
};

struct BKGradientStruct {
    struct BKColorStruct startColorStruct;
    struct BKColorStruct stopColorStruct;
};


#pragma mark - Color constants

static struct BKColorStruct const kBKColorYellow =
    {1.f, 182.f/255.f, 18.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorLightYellow =
    {254.f/255.f, 218.f/255.f, 36.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorOrange =
    {237.f/255.f, 119.f/255.f, 3.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorBlack =
    {51.f/255.f, 51.f/255.f, 51.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorLightBlack =
    {153.f/255.f, 153.f/255.f, 153.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorGray =
    {208.f/255.f, 200.f/255.f, 186.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorLightGray =
    {242.f/255.f, 240.f/255.f, 237.f/255.f, 1.0f};

static struct BKColorStruct const kBKColorWhite = {1.f, 1.f, 1.f, 1.f};

static struct BKColorStruct const kBKColorGradientStart =
    {247.f/255.f, 167.f/255.f, 0.f, 1.0f};

static struct BKColorStruct const kBKColorGradientStop =
    {1.f, 225.f/255.f, 0.f, 1.0f};


@implementation UIColor (BKStyle)

#pragma mark - Private

+ (UIColor *)BK_colorFromRMRColor:(struct BKColorStruct)color
{
    return [UIColor colorWithRed:color.red
                           green:color.green
                            blue:color.blue
                           alpha:color.alpha];
}


#pragma mark - Colors

+ (UIColor *)BK_yellowColor { return [self BK_colorFromRMRColor:kBKColorYellow]; }

+ (UIColor *)BK_lightYellowColor { return [self BK_colorFromRMRColor:kBKColorLightYellow]; }

+ (UIColor *)BK_orangeColor { return [self BK_colorFromRMRColor:kBKColorOrange]; }

+ (UIColor *)BK_blackColor { return [self BK_colorFromRMRColor:kBKColorBlack]; }

+ (UIColor *)BK_lightBlackColor { return [self BK_colorFromRMRColor:kBKColorLightBlack]; }

+ (UIColor *)BK_grayColor { return [self BK_colorFromRMRColor:kBKColorGray]; }

+ (UIColor *)BK_lightGrayColor { return [self BK_colorFromRMRColor:kBKColorLightGray]; }

+ (UIColor *)BK_whiteColor { return [self BK_colorFromRMRColor:kBKColorWhite]; }


#pragma mark - Gradient

+ (UIColor *)BK_gradientStartColor { return [self BK_colorFromRMRColor:kBKColorGradientStart]; }

+ (UIColor *)BK_gradientStopColor { return [self BK_colorFromRMRColor:kBKColorGradientStop]; }


#pragma mak - Helpers

- (UIColor *)BK_20PercentsDarker
{
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
    
    if ([self getRed:&red green:&green blue:&blue alpha:&alpha]) {
        red   *= .8f;
        green *= .8f;
        blue  *= .8f;
        
        return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    } else return nil;
}

@end
