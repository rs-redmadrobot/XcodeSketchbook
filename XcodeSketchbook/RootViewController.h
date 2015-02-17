//
//  RootViewController.h
//  XcodeSketchbook
//
//  Created by Roman Shelekhov on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UIAlertViewDelegate> {
    
    IBOutlet UILabel *m_buttonIndexLabel;
    
    IBOutlet UISwitch *switchButton;
}

// @interface RootViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)theSwitch;

- (IBAction)showActionSheet:(id)sender;

@end
