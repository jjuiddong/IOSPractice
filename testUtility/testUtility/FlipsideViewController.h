//
//  FlipsideViewController.h
//  testUtility
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
