//
//  BKFontConstructor.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 21.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Constants

extern NSString * const kBKFontConstructorFontNameBook;
extern NSString * const kBKFontConstructorFontNameMedium;


/**
 Перечисление возможных типов начертания шрифта
 */
typedef NS_ENUM(NSInteger, BKFontStyle) {
    /**
     Начертание Book
     */
    BKFontStyleBook,
    /**
     Начертание Medium
     */
    BKFontStyleMedium
};


/**
 Объект, который конструирует экзэмпляры класса UIFont в соответствии с гайдлайнами
 */
@interface BKFontConstructor: NSObject

#pragma mark - Font constructor

/**
 Метод конструирует объект UIFont сконфигурированный с заданным в гайдланах шрифтом
 и указанным начертанием и размером
 
 @param fontStyle начертание шрифта (Book, Medium, etc. см. BKFontStyle)
 @param size      размер
 
 @return Сконфигурированный объект UIFont
 */
+ (UIFont *)fontWithStyle:(BKFontStyle)fontStyle size:(CGFloat)size;


#pragma mark - Predefined font styles

/**
 Header-accent [A1]
 
 @return Сконфигурированный объект UIFont Начертание Medium Размер 18*2x
 */
+ (UIFont *)A1font;

/**
 Supertext [A2]
 
 @return Сконфигурированный объект UIFont Начертание Book Размер 24*2x
 */
+ (UIFont *)A2font;

/**
 Header [A3]
 
 @return Сконфигурированный объект UIFont Начертание Book Размер 18*2x
 */
+ (UIFont *)A3font;

/**
 Normal [A4]
 
 @return Сконфигурированный объект UIFont Начертание Book Размер 15*2x
 */
+ (UIFont *)A4font;

/**
 Ultramini [A5]
 
 @return Сконфигурированный объект UIFont Начертание Book Размер 10*2x
 */
+ (UIFont *)A5font;

/**
 Normal-accent [B1]
 
 @return Сконфигурированный объект UIFont Начертание Medium Размер 15*2x
 */
+ (UIFont *)B1font;

/**
 Mini [B2]
 
 @return Сконфигурированный объект UIFont Начертание Book Размер 13*2x
 */
+ (UIFont *)B2font;

/**
 [B3]
 
 @return Сконфигурированный объект UIFont Начертание Book Размер 5*2x
 */
+ (UIFont *)B3font;

@end
