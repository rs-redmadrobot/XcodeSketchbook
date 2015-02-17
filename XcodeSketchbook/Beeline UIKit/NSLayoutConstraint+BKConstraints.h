//
//  NSLayoutConstraint+BKConstraints.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 03.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NSLayoutConstraint (BKConstraints)

+ (NSArray *)BK_constraintsToCenterView:(UIView *)view
                            inSuperView:(UIView *)superView;


#pragma mark - Fill vertically

+ (NSArray *)BK_fillSuperviewVerticallyWithView:(UIView *)view
                                      topPadding:(CGFloat)topPadding
                                   bottomPadding:(CGFloat)bottomPadding;

+ (NSArray *)BK_fillSuperviewVerticallyWithView:(UIView *)view padding:(CGFloat)padding;


#pragma mark - Fill horizontally

/**
 Метод формирует массив из NSLayoutConstraint, для разметки,
 с которой view будет заполнять superView горизонтально с заданными отступами
 
 @param leftPadding     отступ слева
 @param rightPadding    отступ справа
 
 @return массив NSLayoutConstraint
 */
+ (NSArray *)BK_fillSuperviewHorizontallyWithView:(UIView *)view
                                       leftPadding:(CGFloat)leftPadding
                                      rightPadding:(CGFloat)rightPadding;

/**
 Метод формирует массив из NSLayoutConstraint, для разметки,
 с которой view будет заполнять superView горизонтально с заданным отступом слева и справа
 
 @param padding отступ
 
 @return массив NSLayoutConstraint
 */
+ (NSArray *)BK_fillSuperviewHorizontallyWithView:(UIView *)view padding:(CGFloat)padding;


#pragma mark - Center

/**
 Метод формирует NSLayoutConstraint, который связывает центр view и toView по горизонтали
 */
+ (NSLayoutConstraint *)BK_centerHorizontallyView:(UIView *)view toView:(UIView *)toView;

/**
 Метод формирует NSLayoutConstraint, который связывает центр view и toView по вертикали
 */
+ (NSLayoutConstraint *)BK_centerVerticallyView:(UIView *)view toView:(UIView *)toView;


#pragma mark - Size

/**
 Метод формирует массив с NSLayoutConstraint с указанным priority
 для установки размеров view
 
 @param size Требуемый размер
 @param view View для которой указывается размер
 @param priority Приоритет constraints, которые будут сформированы
 
 @return Массив NSLayoutConstraint
 */
+ (NSArray *)BK_constraintsForSize:(CGSize)size
                            forView:(UIView *)view
                       withPriority:(UILayoutPriority)priority;

/**
 Метод формирует массив с NSLayoutConstraint с priority == UILayoutPriorityRequired
 для установки размеров view
 
 @param size Требуемый размер
 @param view View для которой указывается размер
 
 @return Массив NSLayoutConstraint
 */
+ (NSArray *)BK_constraintsForSize:(CGSize)size forView:(UIView *)view;

+ (NSLayoutConstraint *)BK_constraintForHeight:(CGFloat)height forView:(UIView *)view;

+ (NSLayoutConstraint *)BK_constraintForWidth:(CGFloat)width forView:(UIView *)view;

@end
