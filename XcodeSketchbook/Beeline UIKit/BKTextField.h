//
//  BKTextField.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

//IB_DESIGNABLE

/**
 Сабкласс UITextField конифигурирующий поле ввода
 в соответствии с описанием в гадйланах.
 
 Следует обратить внимание, что в процессе конфигурирования элемента,
 устанавливаются следующие свойства:
 — font
 — textColor
 — borderStyle
 — tintColor
 
 В случае использования элеметна из Interface Builder (xib, storyboard),
 следует переопределять не подходящие кастомизированные свойства элемента
 после загрузки, а не в панели свойств IB. В противном случае изменения
 применены не будут.
 */
@interface BKTextField : UITextField

/**
 Цвет текста, когда свойство enabled установлено в NO.
 */
@property (nonatomic, copy) UIColor *disabledTextColor;

@end
