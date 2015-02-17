//
//  DismissSegue.m
//  XcodeSketchbook
//
//  Created by RS on 17.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
