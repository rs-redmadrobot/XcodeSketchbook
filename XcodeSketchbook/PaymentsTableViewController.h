//
//  PaymentsTableViewController.h
//  XcodeSketchbook
//
//  Created by RS on 15.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaymentsTableViewController : UITableViewController {

    IBOutlet UISwitch *switchButton;
    IBOutlet UILabel *label;

}

- (IBAction)theSwitch;

- (IBAction)unwindToPayments:(UIStoryboardSegue *)segue;

@end
