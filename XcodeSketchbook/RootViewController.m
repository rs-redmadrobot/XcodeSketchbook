//
//  RootViewController.m
//  XcodeSketchbook
//
//  Created by Roman Shelekhov on 16.02.15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

// Показываем алерт при выключении уведомлений.
- (IBAction)theSwitch {
    if(switchButton.on) {
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Вы отключили уведомления"
                                                        message:@"Чтобы включить их нажмите на UISwitch Control"
                                                       delegate:nil
                                              cancelButtonTitle:@"Закрыть"
                                              otherButtonTitles: nil];
        [alert show];
    }
}

// Показываем Action Sheet при попытке перейти на сайт
// из раздела «О приложении».
- (IBAction)showActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Вы уверены, что хотите перейти на сайт?"
                                                             delegate:self
                                                    cancelButtonTitle:@"Отмена"
                                               destructiveButtonTitle:@"Перейти на сайт"
                                                    otherButtonTitles: nil];
    
    [actionSheet showInView:self.view];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

// Показываем алерт при нажатии на кнопку «Повторить платеж»
- (IBAction)simpleAlertTouched:(id)sender {
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Вы уверены, что хотите повторить платеж?" message:@"Перевод средств 350 Р на номер +7 (960) 611-08-58 (Билайн)" delegate:nil cancelButtonTitle:@"Отмена" otherButtonTitles:@"Повторить", nil];
    [alert show];
}

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

@end
