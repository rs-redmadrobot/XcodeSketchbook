//
//  NSLayoutConstraint+BKConstraints.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 03.09.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "NSLayoutConstraint+BKConstraints.h"

@implementation NSLayoutConstraint (BKConstraints)

+ (NSArray *)BK_constraintsToCenterView:(UIView *)view
                            inSuperView:(UIView *)superView
{
    NSLayoutConstraint *verticalConstraint =
        [NSLayoutConstraint constraintWithItem:view
                                     attribute:NSLayoutAttributeCenterY
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:superView
                                     attribute:NSLayoutAttributeCenterY
                                    multiplier:1.f
                                      constant:0.f];

    NSLayoutConstraint *horizontalConstraint =
        [NSLayoutConstraint constraintWithItem:view
                                     attribute:NSLayoutAttributeCenterX
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:superView
                                     attribute:NSLayoutAttributeCenterX
                                    multiplier:1.f
                                      constant:0.f];
    
    return @[verticalConstraint, horizontalConstraint];
}


#pragma mark - Private helper

+ (NSLayoutConstraint *)BK_applyAttribute:(NSLayoutAttribute)attribute
                                 relation:(NSLayoutRelation)relation
                                firstItem:(id)firstItem
                               secondItem:(id)secondItem
{
    return [NSLayoutConstraint constraintWithItem:firstItem
                                        attribute:attribute
                                        relatedBy:relation
                                           toItem:secondItem
                                        attribute:attribute
                                       multiplier:1.f
                                         constant:0.f];
}


#pragma mark - Fill vertically

+ (NSArray *)BK_fillSuperviewVerticallyWithView:(UIView *)view
                                      topPadding:(CGFloat)topPadding
                                   bottomPadding:(CGFloat)bottomPadding
{
    return [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(top)-[view]-(bottom)-|"
                                                   options:0
                                                   metrics:@{@"top" : @(topPadding), @"bottom" : @(bottomPadding)}
                                                     views:NSDictionaryOfVariableBindings(view)];
}

+ (NSArray *)BK_fillSuperviewVerticallyWithView:(UIView *)view padding:(CGFloat)padding
{
    return [self BK_fillSuperviewVerticallyWithView:view
                                         topPadding:padding
                                      bottomPadding:padding];
}


#pragma mark - Fill horizontally

+ (NSArray *)BK_fillSuperviewHorizontallyWithView:(UIView *)view
                                       leftPadding:(CGFloat)leftPadding
                                      rightPadding:(CGFloat)rightPadding
{
    return [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(left)-[view]-(right)-|"
                                                   options:0
                                                   metrics:@{@"left" : @(leftPadding), @"right" : @(rightPadding)}
                                                     views:NSDictionaryOfVariableBindings(view)];
}

+ (NSArray *)BK_fillSuperviewHorizontallyWithView:(UIView *)view padding:(CGFloat)padding
{
    return [self BK_fillSuperviewHorizontallyWithView:view
                                          leftPadding:padding
                                         rightPadding:padding];
}


#pragma mark - Center

+ (NSLayoutConstraint *)BK_centerHorizontallyView:(UIView *)view toView:(UIView *)toView
{
    return [self BK_applyAttribute:NSLayoutAttributeCenterX
                          relation:NSLayoutRelationEqual
                         firstItem:view
                        secondItem:toView];
}

+ (NSLayoutConstraint *)BK_centerVerticallyView:(UIView *)view toView:(UIView *)toView
{
    return [self BK_applyAttribute:NSLayoutAttributeCenterY
                          relation:NSLayoutRelationEqual
                         firstItem:view
                        secondItem:toView];
}


#pragma mark - Size

+ (NSArray *)BK_constraintsForSize:(CGSize)size
                            forView:(UIView *)view
                       withPriority:(UILayoutPriority)priority
{
    NSLayoutConstraint *widthConstraint =
    [NSLayoutConstraint constraintWithItem:view
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.f
                                  constant:size.width];
    widthConstraint.priority = priority;
    
    NSLayoutConstraint *heightConstraint =
    [NSLayoutConstraint constraintWithItem:view
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.f
                                  constant:size.height];
    heightConstraint.priority = priority;
    
    return @[widthConstraint, heightConstraint];
}

+ (NSArray *)BK_constraintsForSize:(CGSize)size forView:(UIView *)view
{
    return [self BK_constraintsForSize:size
                                forView:view
                           withPriority:UILayoutPriorityRequired];
}

+ (NSLayoutConstraint *)BK_constraintForSizeAttribute:(NSLayoutAttribute)attribute
                                              constant:(CGFloat)constant
                                                  view:(UIView *)view
{
    return [NSLayoutConstraint constraintWithItem:view
                                        attribute:attribute
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:nil
                                        attribute:NSLayoutAttributeNotAnAttribute
                                       multiplier:1.f
                                         constant:constant];
}

+ (NSLayoutConstraint *)BK_constraintForHeight:(CGFloat)height forView:(UIView *)view
{
    return [self BK_constraintForSizeAttribute:NSLayoutAttributeHeight constant:height view:view];
}

+ (NSLayoutConstraint *)BK_constraintForWidth:(CGFloat)width forView:(UIView *)view
{
    return [self BK_constraintForSizeAttribute:NSLayoutAttributeWidth constant:width view:view];
}

@end
