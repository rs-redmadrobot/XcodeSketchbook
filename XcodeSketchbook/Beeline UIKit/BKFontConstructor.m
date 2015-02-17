//
//  BKFontConstructor.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 21.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKFontConstructor.h"

@import CoreText;

// Helper
#import "NSBundle+BKHelper.h"


#pragma mark - Constants

NSString * const kBKFontConstructorFontNameBook   = @"OfficinaSerifBookITC-Regular";
NSString * const kBKFontConstructorFontNameMedium = @"OfficinaSerifMediumITC-Regular";


@implementation BKFontConstructor

#pragma mark - Private

+ (NSString *)fontNameForStyle:(BKFontStyle)fontStyle
{
    switch (fontStyle) {
        case BKFontStyleBook: return kBKFontConstructorFontNameBook;
        case BKFontStyleMedium: return kBKFontConstructorFontNameMedium;
    }
}


#pragma mark - Public

+ (UIFont *)fontWithStyle:(BKFontStyle)fontStyle size:(CGFloat)size
{
    NSString *fontName = [self fontNameForStyle:fontStyle];
    return [UIFont fontWithName:fontName size:size];
}

+ (UIFont *)A1font
{
    return [self fontWithStyle:BKFontStyleMedium size:18.f];
}

+ (UIFont *)A2font
{
    return [self fontWithStyle:BKFontStyleBook size:24.f];
}

+ (UIFont *)A3font
{
    return [self fontWithStyle:BKFontStyleBook size:18.f];
}

+ (UIFont *)A4font
{
    return [self fontWithStyle:BKFontStyleBook size:15.f];
}

+ (UIFont *)A5font
{
    return [self fontWithStyle:BKFontStyleBook size:10.f];
}

+ (UIFont *)B1font;
{
    return [self fontWithStyle:BKFontStyleMedium size:15.f];
}

+ (UIFont *)B2font
{
    return [self fontWithStyle:BKFontStyleBook size:13.f];
}

+ (UIFont *)B3font { return [self fontWithStyle:BKFontStyleBook size:5.f]; }

@end
