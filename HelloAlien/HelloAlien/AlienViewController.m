//
//  AlienViewController.m
//  HelloAlien
//
//  Created by Lee JaeJung on 2014. 1. 26..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "AlienViewController.h"

@interface AlienViewController ()
{
    @private
    BOOL m_bIsAlienSeen;
}
@end

@implementation AlienViewController
@synthesize delegate;
@synthesize messageForAlien;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // preset to switch is off
    m_bIsAlienSeen = NO;
    // place given text on screen
    self.lblMessageForAlien.text = self.messageForAlien;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    // tell our delegate of our ending state
    [self.delegate alien:self saysIAmHere:m_bIsAlienSeen];
}


- (IBAction)onSwitchValueChanged:(id)sender {
    UISwitch *theSwitch = sender;
    m_bIsAlienSeen = theSwitch.isOn;
}

@end
