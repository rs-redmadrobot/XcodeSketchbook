//
//  RootViewController.h
//  XcodeSketchbook
//
//  Created by RS on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UIAlertViewDelegate> {
    
    IBOutlet UILabel *m_buttonIndexLabel;
    
    IBOutlet UISwitch *switchButton;
    IBOutlet UILabel *label;

}

- (IBAction)theSwitch;

@end
