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
    [self.delegate cancel];
}

- (IBAction)createAccontBtnPressed:(UIButton *)sender {
}
@end
