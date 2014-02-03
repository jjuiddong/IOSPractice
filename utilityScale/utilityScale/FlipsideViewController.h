//
//  FlipsideViewController.h
//  utilityScale
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scale.h"

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;

// report the selection from this view
- (void)flipsideViewController:(FlipsideViewController *)controller selectedScale:(Scale *)scale;

// report that the user is done with this view

@end


@interface FlipsideViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
    
}


@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;
@property (readwrite, atomic) enum eScaleType selectedScaleType;
@property (weak, nonatomic) IBOutlet UITableView *tvScaleTable;

- (IBAction)done:(id)sender;

@end
