//
//  RootViewController.h
//  futureTravel
//
//  Created by Lee JaeJung on 2014. 2. 4..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataViewController.h"

@interface RootViewController : UIViewController <UIPageViewControllerDelegate, DataViewControllerDelegate> {
    
}

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
