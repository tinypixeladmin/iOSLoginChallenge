//
//  TPXViewController.m
//  Section5Challenge
//
//  Created by pixelhacker on 1/7/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import "TPXViewController.h"
#import "TPXCreateAccountViewController.h"

@interface TPXViewController ()

@end

@implementation TPXViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.userNameLbl.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLbl.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
