//
//  AddBookViewController.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 11..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "DBCategory.h"
#import "DBAuthor.h"
#import "SelectionViewController.h"

@protocol AddBookVCDelegate;

@interface AddBookViewController : UITableViewController <UITextFieldDelegate, UITextViewDelegate, SelectionVCDelegate>

@property (nonatomic, assign) id<AddBookVCDelegate> delegate;
@property (nonatomic, strong) DBCategory *category;
@property (nonatomic, strong) DBAuthor *author;


@end

@protocol AddBookVCDelegate <NSObject>
- (void)addBookVC:(AddBookViewController *)aVC didCreateObject:(id)anObject;
@end