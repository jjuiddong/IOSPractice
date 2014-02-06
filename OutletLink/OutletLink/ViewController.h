//
//  ViewController.h
//  OutletLink
//
//  Created by 재정 이 on 12. 3. 18..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *Button1;
- (IBAction)Button1Action:(id)sender;
- (IBAction)TestAction:(id)sender;
- (IBAction)FahrenheitEdit:(id)sender;
- (IBAction)CelsiusEdit:(UITextField *)sender;
@property (weak, nonatomic) IBOutlet UITextField *field1;
@property (weak, nonatomic) IBOutlet UITextField *field2;
- (IBAction)ConvertBtn:(UIButton *)sender;

@end
