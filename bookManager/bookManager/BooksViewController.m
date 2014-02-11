//
//  BookViewController.m
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 12..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "BooksViewController.h"

@interface BooksViewController ()
@property (weak, nonatomic) IBOutlet UITableView *_tableView;
@property (weak, nonatomic) IBOutlet UILabel *_countLabel;

@end

@implementation BooksViewController

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

@end
