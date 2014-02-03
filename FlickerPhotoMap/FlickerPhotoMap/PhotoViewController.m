//
//  PhotoViewController.m
//  FlickerPhotoMap
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoAnnotation.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController

@synthesize photoAnnotation;
@synthesize photoTitleLabel;
@synthesize photoImageView;


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
    
    self.navigationController.navigationBarHidden = NO;
    self.photoImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.photoImageView.image = self.photoAnnotation.image;
    self.photoTitleLabel.text = self.photoAnnotation.title;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
