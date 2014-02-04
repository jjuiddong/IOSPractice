//
//  ModelController.h
//  futureTravel
//
//  Created by Lee JaeJung on 2014. 2. 4..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
