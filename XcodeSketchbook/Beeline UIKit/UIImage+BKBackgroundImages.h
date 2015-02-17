//
//  UIImage+BKBackgroundImages.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 26.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImage (BKBackgroundImages)

/**
 Метод создает изображение 1х1 пиксель заданного цвета
 */
+ (UIImage *)BK_backgroundImageWithColor:(UIColor *)color;

/**
 Метод создает resizable картинку заданного цвета с указанным радиусом скругления
 
 @param color        Требуемый цвет
 @param cornerRadius Радиус скругления
 
 @return image
 */
+ (UIImage *)BK_resizableBackgroundImageWithColor:(UIColor *)color
                                     cornerRadius:(CGFloat)cornerRadius;

/**
 Метод создает resizable картинку без фонового цвета, с заданным цветом border,
 радиусом его скругления и толщиной линии
 
 @param color        Цвет границы
 @param cornerRadius Радиус скругления границы
 @param lineWidth    Толщина линии границы
 
 @return resizable image
 */
+ (UIImage *)BK_resizableBackgroundBorderImageWithColor:(UIColor *)color
                                           cornerRadius:(CGFloat)cornerRadius
                                              lineWidth:(CGFloat)lineWidth;

/**
 Метод создает картнику с изображением круга
 
 @param borderColor Цвет границы. Если не указывать, граница не будет отрисована
 @param lineWidth   Толщина границы
 @param fillColor   Цвет заливки. Если не указывать, круг будет без заливки
 @param diameter    Диаметр круга
 
 @return image
 */
+ (UIImage *)BK_circleImageWithBorderColor:(UIColor *)borderColor
                           borderLineWidth:(CGFloat)lineWidth
                                 fillColor:(UIColor *)fillColor
                                  diameter:(CGFloat)diameter;

/**
 Метод создает картинку с ищображением линии с закругленными концами
 
 @param lineWidth Толщина линии
 @param lineColor Цвет линии
 
 @return image
 */
+ (UIImage *)BK_resizableHorizontalLineImageWithRoundCapWidth:(CGFloat)lineWidth
                                                        color:(UIColor *)lineColor;

+ (UIImage *)BK_segmentImageWithColor:(UIColor *)color
                      backgroundColor:(UIColor *)backgroundColor
                                 size:(CGSize)size
                            lineWidth:(CGFloat)lineWidth;

+ (UIImage *)BK_segmentDividerImageColor:(UIColor *)color size:(CGSize)size;

@end
