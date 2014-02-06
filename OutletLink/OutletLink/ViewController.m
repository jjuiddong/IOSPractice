//
//  ViewController.m
//  OutletLink
//
//  Created by 재정 이 on 12. 3. 18..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize field1;
@synthesize field2;
@synthesize Button1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setButton1:nil];
    [self setField1:nil];
    [self setField2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)Button1Action:(id)sender {
    
    int a = 0;
    
}

- (IBAction)TestAction:(id)sender {
    
    int b = 0;
    
}

- (IBAction)FahrenheitEdit:(id)sender {
    
}

- (IBAction)CelsiusEdit:(UITextField *)sender {
    
}


- (IBAction)ConvertBtn:(UIButton *)sender {
    float invalue = [[field1 text] floatValue];
    float outvalue = (invalue - 32.0f) * 5.0f / 9.0f;
    [field2 setText:[NSString stringWithFormat: @"%3.2f", outvalue]];
    [field1 resignFirstResponder];

}
@end
