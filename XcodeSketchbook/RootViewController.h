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
    
    IBOutlet UITextField *textBox;
}

// @interface RootViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)theSwitch;

- (IBAction)showActionSheet:(id)sender;

- (IBAction)openMaps:(id)sender;
- (IBAction)openYouTube:(id)sender;
- (IBAction)openReceiverApp:(id)sender;

@property(nonatomic, retain) IBOutlet UITextField *textBox;

@end
