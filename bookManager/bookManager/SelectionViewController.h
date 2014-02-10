//
//  SelectionViewController.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 10..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SelectionVCDelegate;

@interface SelectionViewController : UITableViewController

@property (nonatomic, strong) NSArray *objects;
@property (nonatomic, assign) id<SelectionVCDelegate> delegate;

@end

@protocol SelectionVCDelegate <NSObject>
- (void)selectionVC:(SelectionViewController *)aVC didSelectObject:(id)anObject;
@end