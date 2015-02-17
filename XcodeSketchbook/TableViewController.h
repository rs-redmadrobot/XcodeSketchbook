//
//  TableViewController.h
//  XcodeSketchbook
//
//  Created by RS on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController {
    
    IBOutlet UISwitch *switchButton;
    
    IBOutlet UIAlertView *notificAlert;
}

- (IBAction)simpleAlertTouched:(id)sender;

- (IBAction)theSwitch:(id)sender;

- (IBAction)notificationAlert:(id)sender;

@end
