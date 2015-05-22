//
//  ActivityManager.m
//  douban
//
//  Created by lanou3g on 15/5/2.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "ActivityManager.h"
#import "Activity.h"
#import "JSONKit.h"

@implementation ActivityManager

+(ActivityManager * )activityManger{
    
    static ActivityManager *activityManger=nil;
    if (activityManger==nil) {
        activityManger=[[ActivityManager alloc]init];
    }
    return activityManger;
    
}
- (id)init{
    self=[super init];
    if (self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"ActivityList" ofType:@"txt"];
        
        NSData *data=[NSData dataWithContentsOfFile:path];
        
        NSArray * jonStr=[data objectFromJSONData];
        
        self.activityArray =[[NSMutableArray alloc]init];
        ;
            for (NSDictionary *temDic in jonStr) {
                Activity * act=[[Activity alloc]init];
                [act setValuesForKeysWithDictionary:temDic];
                [self.activityArray addObject:act];
     }
        
               
    }
    return  self;
    }
@end
