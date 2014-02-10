//
//  CustomCell.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 10..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *leftImageView;
@property (nonatomic, strong) IBOutlet UILabel *mainLabel;
@property (nonatomic, strong) IBOutlet UILabel *detailLabel1;
@property (nonatomic, strong) IBOutlet UILabel *detailLabel2;

@end
