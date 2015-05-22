//
//  MovieTableViewCell.m
//  douban
//
//  Created by lanou3g on 15/4/30.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "MovieTableViewCell.h"

@implementation MovieTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UIImage * img1=[UIImage imageNamed:@"bg_eventlistcell.png"];
        UIImageView *imgV=[[UIImageView alloc]initWithImage:img1];
        imgV.frame=CGRectMake(10, 10, 300, (480-44-49-20)/3-10);
        
        
        UIImage * image=[UIImage imageNamed:@"picholder@2x"];
        UIImageView * imageVC=[[UIImageView alloc]initWithImage:image ];
        imageVC.frame=  CGRectMake(10, 10, 60, 90);
        [imgV addSubview:imageVC];
        
       
        UILabel *movietype=[[UILabel alloc]initWithFrame:CGRectMake(70, 10, 200, 30)];
        movietype.backgroundColor=[UIColor redColor];
        movietype.textColor=[UIColor blackColor];
        [imgV addSubview:movietype];
        
        UILabel *scorelabel=[[UILabel alloc]initWithFrame:CGRectMake(70, 50, 200, 20)];
        scorelabel.backgroundColor=[UIColor redColor];
        scorelabel.textColor=[UIColor blackColor];
        [imgV addSubview:scorelabel];
        
        UILabel *publishlabel=[[UILabel alloc]initWithFrame:CGRectMake(70, 80, 200, 20)];
        publishlabel.backgroundColor=[UIColor redColor];
        publishlabel.textColor=[UIColor redColor];
        [imgV addSubview:publishlabel];
        
        
        
        
        
        
        
        
        
       
        
        [self.contentView addSubview:imgV];
        [imgV release];
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
