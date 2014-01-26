//
//  AlienViewController.h
//  HelloAlien
//
//  Created by Lee JaeJung on 2014. 1. 26..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AlienViewControllerDelegate;

@interface AlienViewController : UIViewController
@property (weak, atomic) id<AlienViewControllerDelegate> delegate;
@property (strong, atomic) NSString *messageForAlien;
@property (weak, nonatomic) IBOutlet UILabel *lblMessageForAlien;

- (IBAction)onSwitchValueChanged:(id)sender;

@end

@protocol AlienViewControllerDelegate <NSObject>

@required
// alien identifies itself as existing
-(void)alien:(AlienViewController *)view saysIAmHere:(BOOL)bIsHere;

@end
