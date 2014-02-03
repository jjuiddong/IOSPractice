//
//  PinSelectionViewController.h
//  FlickerPhotoMap
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinSelectionDelegateProtocol.h"

@interface PinSelectionViewController : UITableViewController

@property (weak, nonatomic) id<PinSelectionDelegate> delegate;
@property (assign, nonatomic) AnnotationPinType currentPinType;

@end
