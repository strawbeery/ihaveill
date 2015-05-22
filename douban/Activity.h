//
//  Activity.h
//  douban
//
//  Created by lanou3g on 15/5/2.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSObject

@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *begin_time;
@property(nonatomic,copy)NSString *address;
@property(nonatomic,copy)NSString *category_name;
@property(nonatomic,copy)NSString * participant_count;
@property(nonatomic,copy)NSString * wisher_count;
@property(nonatomic,copy)NSString * image;

@end
