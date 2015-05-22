//
//  MyViewTableViewCell.m
//  douban
//
//  Created by lanou3g on 15/5/1.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "MyViewTableViewCell.h"

@implementation MyViewTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
