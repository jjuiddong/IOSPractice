//
//  CustomCell.m
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 10..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize leftImageView;
@synthesize mainLabel;
@synthesize detailLabel1;
@synthesize detailLabel2;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
