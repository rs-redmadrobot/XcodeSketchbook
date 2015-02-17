//
//  BKConstants.m
//  BeelineUIKitDemo
//
//  Created by Roman Churkin on 21.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKConstants.h"

#pragma mark - Exception

NSString * const kBKExceptionReasonWrongButtonType =
    @"BKPrimaryButton и BKOrdinaryButton должны быть инициализированы "
    @"с buttonType == UIButtonTypeCustom, "
    @"а BKPlainButton и BKPlainPrimaryButton с buttonType == UIButtonTypeSystem! "
    @"Проверьте свойство Type в кнопках "
    @"в ваших xib'ах, Storyboard'ах и методах инициализации.";

NSString * const kBKExceptionReasonAlertViewButtonsNil =
    @"BKAlertView не может быть инициализирован без кнопок."
    @"Укажите массив для параметра buttonTitles как минимум с одноим объектом NSString.";

NSString * const kBKExceptionReasonAlertViewButtonsCountZero =
    @"BKAlertView не может быть инициализирован с пустым массивом"
    @"в качестве заголовков для кнопок."
    @"Укажите массив для параметра buttonTitles как минимум с одноим объектом NSString.";

NSString * const kBKExceptionReasonAlertViewPrimaryButtonIndex =
    @"primaryButtonIndex выходит за пределы переданного массива заголовков кнопок BKAlertView";

NSString * const kBKExceptionReasonAlertViewButtonTitleIndex =
    @"buttonIndex выходит за пределы массива кнопок BKAlertView";

NSString * const kBKExceptionReasonActionSheetButtonTitleIndex =
    @"buttonIndex выходит за пределы массива кнопок BKActionSheet";

NSString * const kBKExceptionReasonAlertViewButtonsTitleStrings =
    @"Массив заголовков для кнопок BKAlertView должен состоять из экземпляров класса NSString";

NSString * const kBKExceptionReasonActionSheetButtonsTitleStrings =
    @"Массив заголовков для кнопок BKActionSheet должен состоять из экземпляров класса NSString";


#pragma mark - Appearence

// Отступы
CGFloat const kBKHorizontalPaddingDefault = 16.f;

// Button
CGFloat const kBKButtonsCornerRadius = 4.f;
CGFloat const kBKButtonsBorderWidth  = 1.f;
UIEdgeInsets const  kBKButtonsContentEdgeInsets =
    {14.f, kBKHorizontalPaddingDefault,
     13.f, kBKHorizontalPaddingDefault};

// Slider
CGFloat const kBKSliderLineWidth = 2.f;
CGFloat const kBKSliderThumbImageDiameter = 24.f;
NSString * const kBKSliderMinus = @"bk-slider-minus";
NSString * const kBKSliderPlus  = @"bk-slider-plus";

// Segmented control
CGFloat const kBKSegmentedControlDefaultHeight = 44.f;

UIEdgeInsets const kBKSegmentedControlSmallImageInsets = {1.f, 1.f, 1.f, 1.f};
UIEdgeInsets const kBKSegmentedControlFullImageInsets  = {1.f, 1.f, 5.f, 1.f};

NSString * const kBKSegmentedControlBackgroundNormal           = @"bk-segmented-normal";
NSString * const kBKSegmentedControlBackgroundHighlighted      = @"bk-segmented-highlighted";
NSString * const kBKSegmentedControlBackgroundSelected         = @"bk-segmented-selected";
NSString * const kBKSegmentedControlDividerNormalNormal        = @"bk-segmented-normal_normal";
NSString * const kBKSegmentedControlDividerNormalHighlighted   = @"bk-segmented-normal_highlighted";
NSString * const kBKSegmentedControlDividerNormalSelected      = @"bk-segmented-normal_selected";
NSString * const kBKSegmentedControlDividerHighlightedNormal   = @"bk-segmented-highlighted_normal";
NSString * const kBKSegmentedControlDividerSelectedNormal      = @"bk-segmented-selected_normal";
NSString * const kBKSegmentedControlDividerHighlightedSelected = @"bk-segmented-highlighted_selected";
NSString * const kBKSegmentedControlDividerSelectedHighlighted = @"bk-segmented-selected_highlighted";

// Search bar
NSString * const kBKSearchBarClearButtonIcon = @"bk-search-bar-empty";
NSString * const kBKSearchBarSearchIcon      = @"bk-search-bar-search";

// Pop tip
CGSize const kBKPopTipArrowSize = {16.f, 8.f};
