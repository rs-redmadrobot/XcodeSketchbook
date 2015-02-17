//
//  BonusAlertViewController.m
//  XcodeSketchbook
//
//  Created by RS on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "BonusAlertViewController.h"

@interface BonusAlertViewController ()

@end

@implementation BonusAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) showMessage {
    UIAlertView *BonusAlert = [[UIAlertView alloc]
                               initWithTitle:@"My First App" message:@"Hello World" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    // Display the Hello World Message.
    [BonusAlert show];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
