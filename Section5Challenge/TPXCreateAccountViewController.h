//
//  TPXCreateAccountViewController.h
//  Section5Challenge
//
//  Created by pixelhacker on 1/7/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPXCreateAccountViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usernameTF;
@property (strong, nonatomic) IBOutlet UITextField *passwordTF;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTF;
- (IBAction)cancelBtnPressed:(UIButton *)sender;
- (IBAction)createAccontBtnPressed:(UIButton *)sender;

@end
