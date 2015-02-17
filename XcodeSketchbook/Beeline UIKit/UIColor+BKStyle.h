//
//  UIColor+BKStyle.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 26.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Категория над UIColor, которая предоставлет методы конструкторы цветов согласно гайдлайнам
 */
@interface UIColor (BKStyle)

#pragma mark - Colors

/**
 Желтый [yellow]
 
 Метод конструирует желтый цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R255 • G182 • B18
 */
+ (UIColor *)BK_yellowColor;

/**
 Светло-желтый [light-yellow]
 
 Метод конструирует светло-желтый цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R254 • G218 • B36
 */
+ (UIColor *)BK_lightYellowColor;

/**
 Оранжевый [orange]
 
 Метод конструирует оранжевый цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R237 • G119 • B3
 */
+ (UIColor *)BK_orangeColor;

/**
 Черный [black]
 
 Метод конструирует черный цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R51 • G51 • B51
 */
+ (UIColor *)BK_blackColor;

/**
 Черный (60%) [gray]
 
 Метод конструирует черный (60%) цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R153 • G153 • B153
 */
+ (UIColor *)BK_lightBlackColor;

/**
 Серый [light-gray]
 
 Метод конструирует серый цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R208 • G200 • B186
 */
+ (UIColor *)BK_grayColor;

/**
 Светло-серый []
 
 Метод конструирует серый цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R208 • G200 • B186
 */
+ (UIColor *)BK_lightGrayColor;

/**
 Белый [white]
 
 Метод конструирует белый цвет согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R255 • G255 • B255
 */
+ (UIColor *)BK_whiteColor;

#pragma mark - Gradient

/**
 Цвет для градиента — старт [yellow gradient]
 
 Метод конструирует цвет для начала градиента согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R247 • G167 • B0
 */
+ (UIColor *)BK_gradientStartColor;

/**
 Цвет для градиента — стоп [yellow gradient]
 
 Метод конструирует цвет для конца градиента согласно гайдлайнам
 
 @return Объект UIColor с установленным цветом R255 • G225 • B0
 */
+ (UIColor *)BK_gradientStopColor;

#pragma mak - Helpers

/**
 Метод возращает цвет на 20% более темный чем получатель.
 Альфа остается прежней.
 
 @return На 20% более темный цвет.
 */
- (UIColor *)BK_20PercentsDarker;

@end
