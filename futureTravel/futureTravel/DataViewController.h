//
//  DataViewController.h
//  futureTravel
//
//  Created by Lee JaeJung on 2014. 2. 4..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DataViewControllerDelegate;


@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;
@property (weak, nonatomic) IBOutlet UIImageView *ivPageImage;

@property (weak, nonatomic) id<DataViewControllerDelegate> delegate;

@end


@protocol DataViewControllerDelegate <NSObject>

@required
-(void)dataViewControllerSelectedDestination:(NSUInteger)destinationNumber;

@end
