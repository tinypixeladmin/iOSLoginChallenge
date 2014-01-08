//
//  TPXSignInViewController.m
//  Section5Challenge
//
//  Created by pixelhacker on 1/7/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import "TPXSignInViewController.h"

@interface TPXSignInViewController ()

@end

@implementation TPXSignInViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.destinationViewController isKindOfClass:[TPXCreateAccountViewController class]]){
        TPXCreateAccountViewController *createAccountVC = segue.destinationViewController;
        
        createAccountVC.delegate = self;
        
    }
}

- (IBAction)logingBtnPressed:(UIButton *)sender {
    NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *pword = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    if([self.usernameTF.text isEqualToString:userName] &&
       [self.passwordTF.text isEqualToString:pword]){
        
        [self performSegueWithIdentifier:@"toVCSegue" sender:sender];
        
    } else {
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Username or password combination does not work" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [av show];
        
    }
    
    
    
}

- (IBAction)createAccountBtnPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountVCSegue" sender:sender];
}

#pragma mark - TPXCreateAccountViewController Delegate
-(void) didCancel{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) didCreatAccount{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
