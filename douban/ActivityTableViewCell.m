//
//  ActivityTableViewCell.m
//  douban
//
//  Created by lanou3g on 15/4/29.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "ActivityTableViewCell.h"
#import<UIKit/UIKit.h>
#import "Activity.h"
#import "ActivityManager.h"

@implementation ActivityTableViewCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        Activity *act=[[Activity alloc]init];
       
        UIImage * img1=[UIImage imageNamed:@"bg_eventlistcell.png"];
        UIImageView *imgV=[[UIImageView alloc]initWithImage:img1];
        imgV.frame=CGRectMake(10, 10, 300, (480-44-49-20)/3-10);
        UILabel * nameLabel= [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 200, 20)];
        //nameLabel.text=@"罗马与巴洛克艺术";
        nameLabel.backgroundColor=[UIColor clearColor];
        nameLabel.textColor=[UIColor blackColor];
        nameLabel.font=[UIFont systemFontOfSize:14];
        act.title=nameLabel.text;
        [imgV addSubview:nameLabel];
        [nameLabel release];
        
        
        UIImage * img=[UIImage imageNamed:@"bg_share_large@2x.png"];
        UIImageView * imageV=[[UIImageView alloc]initWithImage:img];
        imageV.frame=CGRectMake(10, 20, 280, 90);
        [imgV addSubview:imageV];
        
        UIImage * dateimg=[UIImage imageNamed:@"icon_date.png"];
        UIImageView * imagedate=[[UIImageView alloc]initWithImage:dateimg];
        imagedate.frame=CGRectMake(20, 30, 20, 20);
        [imgV addSubview:imagedate];
        
        UILabel * datelabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 30, 180, 20)];
        [datelabel setText:@"07-22"];
        datelabel.backgroundColor=[UIColor redColor];
        datelabel.textColor=[UIColor blackColor];
        datelabel.font=[UIFont systemFontOfSize:13];
        act.begin_time=datelabel.text;
        [imgV addSubview:datelabel];
        
        UIImage *addrimg=[UIImage imageNamed:@"icon_spot@2x.png"];
      UIImageView *imageaddr=[[UIImageView alloc]initWithImage:addrimg];
        imageaddr.frame=CGRectMake(20, 50, 20, 20);
        [imgV addSubview:imageaddr];
        
        UILabel *addrlabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 50, 180, 20)];
        [addrlabel setText:@"北京 东城区 东长安街16号中国"];
         addrlabel.textColor=[UIColor blackColor];
        addrlabel.font=[UIFont systemFontOfSize:13];
          act.address=addrlabel.text;
        [imgV addSubview:addrlabel];
        
        
        UIImage *type=[UIImage imageNamed:@"icon_catalog@2x.png"];
        UIImageView *imagetype=[[UIImageView alloc]initWithImage:type];
        imagetype.frame=CGRectMake(20, 70, 20, 20);
        [imgV addSubview:imagetype];
        
        UILabel * typelabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 70, 180, 20)];
        [typelabel  setText:@"类型：展览"];
        typelabel.font=[UIFont systemFontOfSize:13];
            act.category_name=typelabel.text;
        [imgV addSubview:typelabel];
        
        UILabel  *insterestlabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 90, 50, 20)];
        [insterestlabel setText:@"感兴趣:23"];
        insterestlabel.textColor=[UIColor blackColor];
        insterestlabel.font=[UIFont systemFontOfSize:10];
         act.participant_count=insterestlabel.text;
        [imgV addSubview:insterestlabel ];
         
        
        
        UILabel *joinlabel=[[UILabel alloc]initWithFrame:CGRectMake(100, 90, 50, 20)];
        [joinlabel setText:@"参加:10"];
        joinlabel.textColor=[UIColor blackColor];
        joinlabel.font=[UIFont systemFontOfSize:10];
          act.wisher_count=joinlabel.text;
        [imgV addSubview:joinlabel];
        
                    
        
        
        
        [self.contentView addSubview:imgV];
        [imgV release];
        
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
