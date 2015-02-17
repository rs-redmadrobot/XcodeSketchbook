//
//  UIImage+BKBackgroundImages.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 26.08.14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "UIImage+BKBackgroundImages.h"

// Constants

/**
 Просто 0.0f
 */
static CGFloat const CGFLoatZero = 0.f;

@implementation UIImage (BKBackgroundImages)

+ (UIImage *)BK_backgroundImageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(CGFLoatZero, CGFLoatZero, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)BK_resizableBackgroundImageWithColor:(UIColor *)color
                                     cornerRadius:(CGFloat)cornerRadius
{
    CGFloat size = cornerRadius * 2.f + 1.f;
    
    CGRect rect = CGRectMake(CGFLoatZero, CGFLoatZero, size, size);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);

    CGContextFillEllipseInRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIEdgeInsets capInsets =
    UIEdgeInsetsMake(cornerRadius, cornerRadius,
                     cornerRadius, cornerRadius);
    
    return [image resizableImageWithCapInsets:capInsets];
}

+ (UIImage *)BK_resizableBackgroundBorderImageWithColor:(UIColor *)color
                                           cornerRadius:(CGFloat)cornerRadius
                                              lineWidth:(CGFloat)lineWidth
{
    CGFloat size = cornerRadius * 2.f + 1.f;
    
    CGRect rect = CGRectMake(CGFLoatZero, CGFLoatZero, size, size);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, color.CGColor);

    CGContextSetLineWidth(context, lineWidth);
    
    CGContextStrokeEllipseInRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIEdgeInsets capInsets =
        UIEdgeInsetsMake(cornerRadius, cornerRadius,
                         cornerRadius, cornerRadius);
    
    return [image resizableImageWithCapInsets:capInsets];
}

+ (UIImage *)BK_resizableHorizontalLineImageWithRoundCapWidth:(CGFloat)lineWidth
                                                        color:(UIColor *)lineColor
{
    CGFloat length = lineWidth + 1.f;
    
    CGRect rect = CGRectMake(CGFLoatZero, CGFLoatZero, length, lineWidth);
    
    CGFloat lineWidthHalf = lineWidth/2.f;
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, lineColor.CGColor);
    CGContextSetLineWidth(context, lineWidth);
    
    CGContextMoveToPoint(context, lineWidthHalf, lineWidthHalf);
    CGContextAddLineToPoint(context, length-lineWidthHalf, lineWidthHalf);
    CGContextStrokePath(context);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIEdgeInsets capInsets =
    UIEdgeInsetsMake(CGFLoatZero, lineWidthHalf,
                     CGFLoatZero, lineWidthHalf);
    
    return [image resizableImageWithCapInsets:capInsets];
}

+ (UIImage *)BK_circleImageWithBorderColor:(UIColor *)borderColor
                           borderLineWidth:(CGFloat)lineWidth
                                 fillColor:(UIColor *)fillColor
                                  diameter:(CGFloat)diameter
{
    CGRect rect = CGRectMake(CGFLoatZero, CGFLoatZero, diameter, diameter);

    UIGraphicsBeginImageContextWithOptions(rect.size, NO, CGFLoatZero);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    if (fillColor) {
        CGContextSetFillColorWithColor(context, fillColor.CGColor);
        CGContextFillEllipseInRect(context, rect);
    }
    
    if (borderColor) {
        CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
        CGContextSetLineWidth(context, lineWidth);
        CGRect borderRect = CGRectInset(rect, lineWidth/2.f, lineWidth/2.f);
        CGContextStrokeEllipseInRect(context, borderRect);
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)BK_segmentImageWithColor:(UIColor *)color
                      backgroundColor:(UIColor *)backgroundColor
                                 size:(CGSize)size
                            lineWidth:(CGFloat)lineWidth
{
    CGRect frame = CGRectMake(CGFLoatZero, CGFLoatZero, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(frame.size, NO, CGFLoatZero);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [backgroundColor setFill];
    
    CGContextFillRect(context, frame);
    
    [color setFill];
    
    frame = CGRectMake(CGFLoatZero, size.height - lineWidth, size.width, lineWidth);
    
    CGContextFillRect(context, frame);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}

+ (UIImage *)BK_segmentDividerImageColor:(UIColor *)color size:(CGSize)size
{
    CGRect frame = CGRectMake(CGFLoatZero, CGFLoatZero, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(frame.size, NO, CGFLoatZero);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [color setFill];
    
    CGContextFillRect(context, frame);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}

@end
