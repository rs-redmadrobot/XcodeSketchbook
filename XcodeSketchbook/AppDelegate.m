//
//  AppDelegate.m
//  XcodeSketchbook
//
//  Created by Roman Churkin on 09/02/15.
//  Edited by Roman Shelekhov.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "AppDelegate.h"

@import CoreLocation.CLLocationManager;

@implementation AppDelegate {
    
    CLLocationManager *_locationManager;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _locationManager = [CLLocationManager new];
    [_locationManager requestWhenInUseAuthorization];
    return YES;
}

@end
