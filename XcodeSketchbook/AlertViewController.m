//
//  AlertViewController.m
//  XcodeSketchbook
//
//  Created by RS on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

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

- (IBAction)showMessage:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"I'm an alert" message:@"Roman Shelekhov, Senyor Desugner in Redmadrobot" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [alert show];
}

@end
