//
//  TPXCreateAccountViewController.h
//  Section5Challenge
//
//  Created by pixelhacker on 1/7/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import <UIKit/UIKit.h>
#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol TPXCreateAccountViewControllerDelegate <NSObject>

@required
-(void)didCancel;
-(void)didCreatAccount;

@end

@interface TPXCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <TPXCreateAccountViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *usernameTF;
@property (strong, nonatomic) IBOutlet UITextField *passwordTF;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTF;

- (IBAction)cancelBtnPressed:(UIButton *)sender;
- (IBAction)createAccontBtnPressed:(UIButton *)sender;

@end
