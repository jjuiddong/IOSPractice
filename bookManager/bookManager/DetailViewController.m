//
//  DetailViewController.m
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 6..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "DetailViewController.h"
#import "DBBook.h"


@interface DetailViewController ()
- (void)configureView;
@property (weak, nonatomic) IBOutlet UILabel *_titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *_categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *_authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *_yearLabel;
@property (weak, nonatomic) IBOutlet UIImageView *_bookImage;
@property (weak, nonatomic) IBOutlet UITextView *_descriptionTextView;

@end

@implementation DetailViewController



#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [self.detailItem description];
        
       DBBook *object = self.detailItem;
        self._titleLabel.text = object.title;
        self._authorLabel.text = object.author.fullName;
        self._categoryLabel.text = object.category.categoryName;
        self._yearLabel.text = object.year;
        self._descriptionTextView.text = object.bookDescription;
        self._bookImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@big.png", object.imageName]];
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
