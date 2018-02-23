//
//  DateUtils.h
//  APPSummary
//
//  Created by xubojoy on 2018/2/23.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, EndTimeType) {
    EndTimeTypeDay,
    EndTimeTypeWeek,
    EndTimeTypeMonth,
};
@interface DateUtils : NSObject
+ (NSString *)currentCycleEndTimeStrWithType:(EndTimeType)type;
@end
