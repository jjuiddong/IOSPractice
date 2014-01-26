//
//  ViewController.h
//  HelloAlien
//
//  Created by Lee JaeJung on 2014. 1. 26..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlienViewController.h"
@interface ViewController : UIViewController <AlienViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblFindStatus;
@property (strong, nonatomic) NSString *alienText;
@end
