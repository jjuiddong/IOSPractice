//
//  PhotoViewController.h
//  FlickerPhotoMap
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhotoAnnotation;

@interface PhotoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *photoTitleLabel;
@property (strong, nonatomic) PhotoAnnotation *photoAnnotation;
@end
