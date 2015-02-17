//
//  BKConstants.h
//  BeelineUIKitDemo
//
//  Created by Roman Churkin on 21.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

@import UIKit;

/**
 Файл глобальных констант
 */

#pragma mark - Exception

extern NSString * const kBKExceptionReasonWrongButtonType;
extern NSString * const kBKExceptionReasonAlertViewButtonsNil;
extern NSString * const kBKExceptionReasonAlertViewButtonsCountZero;
extern NSString * const kBKExceptionReasonAlertViewPrimaryButtonIndex;
extern NSString * const kBKExceptionReasonAlertViewButtonTitleIndex;
extern NSString * const kBKExceptionReasonActionSheetButtonTitleIndex;
extern NSString * const kBKExceptionReasonAlertViewButtonsTitleStrings;
extern NSString * const kBKExceptionReasonActionSheetButtonsTitleStrings;


#pragma mark - Appearence

// Отступы
extern CGFloat const kBKHorizontalPaddingDefault;

// Button
extern CGFloat const kBKButtonsCornerRadius;
extern CGFloat const kBKButtonsBorderWidth;
extern UIEdgeInsets const  kBKButtonsContentEdgeInsets;

// Slider
extern CGFloat const kBKSliderLineWidth;
extern CGFloat const kBKSliderThumbImageDiameter;
extern NSString * const kBKSliderMinus;
extern NSString * const kBKSliderPlus;

// Segmented control
extern CGFloat const kBKSegmentedControlDefaultHeight;

extern UIEdgeInsets const kBKSegmentedControlSmallImageInsets;
extern UIEdgeInsets const kBKSegmentedControlFullImageInsets;

extern NSString * const kBKSegmentedControlBackgroundNormal;
extern NSString * const kBKSegmentedControlBackgroundHighlighted;
extern NSString * const kBKSegmentedControlBackgroundSelected;
extern NSString * const kBKSegmentedControlDividerNormalNormal;
extern NSString * const kBKSegmentedControlDividerNormalHighlighted;
extern NSString * const kBKSegmentedControlDividerNormalSelected;
extern NSString * const kBKSegmentedControlDividerHighlightedNormal;
extern NSString * const kBKSegmentedControlDividerSelectedNormal;
extern NSString * const kBKSegmentedControlDividerHighlightedSelected;
extern NSString * const kBKSegmentedControlDividerSelectedHighlighted;

// Search bar
extern NSString * const kBKSearchBarClearButtonIcon;
extern NSString * const kBKSearchBarSearchIcon;

// Pop tip
extern CGSize const kBKPopTipArrowSize;
