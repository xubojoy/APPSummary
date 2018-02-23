//
//  DateUtils.m
//  APPSummary
//
//  Created by xubojoy on 2018/2/23.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import "DateUtils.h"

@implementation DateUtils

+ (NSString *)currentCycleEndTimeStrWithType:(EndTimeType)type {
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [gregorian components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
    switch (type) {
        case EndTimeTypeDay:
            [components setDay:([components day]+1)];
            break;
        case EndTimeTypeWeek:
            [components setDay:([components day]+7)];
            break;
        case EndTimeTypeMonth:
            [components setMonth:([components month]+1)];
            break;
        default:
            break;
    }
    
    NSDate *beginningOfWeek = [gregorian dateFromComponents:components];
    NSDateFormatter *dateday = [[NSDateFormatter alloc] init];
    [dateday setDateFormat:@"yyy-MM-dd"];
    return [dateday stringFromDate:beginningOfWeek];
}
@end
