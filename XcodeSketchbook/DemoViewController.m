//
//  DemoViewController.m
//  XcodeSketchbook
//
//  Created by RS on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()
@property (nonatomic, strong) UIAlertView *currentAlert;
@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)activateAlert:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Testing" cancelButtonTitle:@"Cancel" otherButtonTitles:@"Button 1",@"Button 2",nil];
    _currentAlert = alert;
    [alert showWithDismissHandler:^(NSInteger selectedIndex, NSString *selectedTitle, BOOL didCancel) {
        if (didCancel) {
            NSLog(@"User cancelled");
            return;
        }
        switch (selectedIndex) {
            case 1:
                NSLog(@"%@ selected", selectedTitle);
                break;
            case 2:
                NSLog(@"%@ selected", selectedTitle);
                break;
            default:
                break;
        }
    }];
}


@end
