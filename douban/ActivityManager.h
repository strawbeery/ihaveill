//
//  ActivityManager.h
//  douban
//
//  Created by lanou3g on 15/5/2.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActivityManager : NSObject{
    NSMutableDictionary * _activityDic;
    
}
+(ActivityManager * )activityManger;
@property(nonatomic,retain)NSMutableArray * activityArray;

@end
