//
//  BooksViewController.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 12..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBCategory.h"
#import "DBAuthor.h"
#import "AddBookViewController.h"

@interface BooksViewController : UIViewController <AddBookVCDelegate>

@property (nonatomic, strong) DBCategory *category;
@property (nonatomic, strong) DBAuthor *author;

@end