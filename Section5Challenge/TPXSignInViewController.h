//
//  TPXSignInViewController.h
//  Section5Challenge
//
//  Created by pixelhacker on 1/7/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPXSignInViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usernameTF;
@property (strong, nonatomic) IBOutlet UITextField *passwordTF;

- (IBAction)logingBtnPressed:(UIButton *)sender;
- (IBAction)createAccountBtnPressed:(UIBarButtonItem *)sender;

@end
