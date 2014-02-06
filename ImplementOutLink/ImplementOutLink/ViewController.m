//
//  ViewController.m
//  ImplementOutLink
//
//  Created by 재정 이 on 12. 3. 24..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


#define BARBUTTON(TITLE, SELECTOR) [[[UIBarButtonItem alloc] initWithTitle:TITLE style:UIBarButtonItemStylePlain target:self action:SELECTOR] autorelease]


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIView *contentView = [[UIView alloc] initWithFrame:
                           [[UIScreen mainScreen] applicationFrame]];
    self.view = contentView;
    contentView.backgroundColor = [UIColor whiteColor];

    
    field1 = [[UITextField alloc] initWithFrame: CGRectMake(185.0, 31.0, 97.0, 31.0)];
    field1.borderStyle = UITextBorderStyleRoundedRect;
    field1.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    field1.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    field2 = [[UITextField alloc] initWithFrame: CGRectMake(185.0, 97.0, 97.0, 31.0)];
    field2.borderStyle = UITextBorderStyleRoundedRect;
    field2.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    field2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

//    convertBtn = [[UIButton alloc] initWithFrame:CGRectMake(100.0, 200.0, 100.0, 31.0)];
//    [convertBtn addTarget:self action:@selector(convert:) forControlEvents:UIControlEventTouchUpInside];
  
    convertBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [convertBtn setFrame:CGRectMake(100.0, 200.0, 100.0, 31.0)];
    [convertBtn setCenter:CGPointMake(160.f, 208.0f)];
    [convertBtn setTitle:@"Convert" forState:UIControlStateNormal];
    [convertBtn addTarget:self action:@selector(convert:) forControlEvents:UIControlEventTouchUpInside];
    
    [contentView addSubview:field1];
    [contentView addSubview:field2];
    [contentView addSubview:convertBtn];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void) convert:(id)sender
{
    float invalue = [[field1 text] floatValue];
    float outvalue = (invalue - 32.0f) * 5.0f / 9.0f;
    [field2 setText:[NSString stringWithFormat: @"%3.2f", outvalue]];
    [field1 resignFirstResponder];
}






@end
