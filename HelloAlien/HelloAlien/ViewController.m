//
//  ViewController.m
//  HelloAlien
//
//  Created by Lee JaeJung on 2014. 1. 26..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize alienText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
// show initial find status
    [self alien:nil saysIAmHere:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)alien:(AlienViewController *)view saysIAmHere:(BOOL)bIsHere
{
    self.lblFindStatus.text = (bIsHere) ? @"Status: whoa, found aliens!" : @"Status: no aliens found";


}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowAlienView"]) {
        [[segue destinationViewController] setDelegate:self];
    }
    
    [[segue destinationViewController] setMessageForAlien:self.alienText];
    
}

#pragma mark ---- <UITextFieldDelegate> Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	// the user pressed the return, so dismiss the keyboard
	[textField resignFirstResponder];
	return YES;
}

#pragma mark ---- IBAction methods

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    // Capture the new text from out text field
    self.alienText = textField.text;
}



@end
