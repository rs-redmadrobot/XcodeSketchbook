//
//  BKSlider.h
//  BeelineUIKit
//
//  Created by Roman Churkin on 28.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Сабкласс UISlider конифигурирующий слайдер
 в соответствии с описанием в гадйланах.
 
 Следует обратить внимание, что в процессе конфигурирования элемента,
 устанавливаются следующие свойства:
 — minimumTrackImage
 — maximumTrackImage
 — thumbImage
 
 В случае использования элеметна из Interface Builder (xib, storyboard),
 следует переопределять не подходящие кастомизированные свойства элемента
 после загрузки, а не в панели свойств IB. В противном случае изменения
 применены не будут.
 */
@interface BKSlider : UISlider

/**
 Свойство, которое позволяет включить отображение иконок у BKSlider
 */
@property (nonatomic, assign) IBInspectable BOOL showIcons;

@end
