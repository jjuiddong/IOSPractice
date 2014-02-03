//
//  MainViewController.h
//  utilityScale
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "FlipsideViewController.h"
#import "AudioPlayer.h"
#import "PlayButton.h"
#import "Scale.h"
#import "PlayButton.h"



@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, UIPopoverControllerDelegate, AudioPlayerDelegate, PlayButtonDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;
@property (weak, nonatomic) IBOutlet UIImageView *ivBackground;
@property (weak, nonatomic) IBOutlet UIView *vwButtonPlace;
@property (weak, nonatomic) IBOutlet UINavigationItem *niTitle;

@end
