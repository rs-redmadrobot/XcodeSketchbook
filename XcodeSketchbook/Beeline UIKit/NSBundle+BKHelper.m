//
//  NSBundle+BKHelper.m
//  BKlineUIKit
//
//  Created by Roman Churkin on 25/09/14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "NSBundle+BKHelper.h"


@implementation NSBundle (BKHelper)

+ (NSString *)BK_resourcePath
{
    static NSString *resourcePath;

    if (!resourcePath) resourcePath = [@"BeelineUIKitBundle.bundle" stringByAppendingString:@"/"];
    
    return resourcePath;
}

@end
