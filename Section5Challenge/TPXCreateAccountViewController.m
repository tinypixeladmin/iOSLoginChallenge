//
//  TPXCreateAccountViewController.m
//  Section5Challenge
//
//  Created by pixelhacker on 1/7/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import "TPXCreateAccountViewController.h"

@interface TPXCreateAccountViewController ()

@end

@implementation TPXCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelBtnPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

- (IBAction)createAccontBtnPressed:(UIButton *)sender {
    if((self.usernameTF.text.length != 0) &&
       (self.passwordTF.text.length != 0) &&
       [self.passwordTF.text isEqualToString:self.confirmPasswordTF.text]){
    
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTF.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTF.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
    } else {
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information Not Entered Correctly" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [av show];
        
        
    }
    
    
    
    
    [self.delegate didCreatAccount];
}
@end
