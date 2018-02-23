//
//  Constant.h
//  APPSummary
//
//  Created by xubojoy on 2018/2/23.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import <Foundation/Foundation.h>



#define screen_width          [UIScreen mainScreen].bounds.size.width
#define screen_height          [UIScreen mainScreen].bounds.size.height
// 判断是否支持TouchID,只判断手机端，ipad端我们不支持
#define IS_Phone        (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone
#define IOS8_OR_LATER    ( [[[UIDevice currentDevice] systemVersion] compare:@"8.0"] != NSOrderedAscending )

OBJC_EXTERN CFStringRef MGCopyAnswer(CFStringRef key) WEAK_IMPORT_ATTRIBUTE;


//防止循环引用
#define WeakObj(obj) __weak typeof(obj) obj##Weak = obj

//尺寸
#define BAScreenHeight [UIScreen mainScreen].bounds.size.height//屏幕高度
#define BAScreenWidth [UIScreen mainScreen].bounds.size.width//屏幕宽度
#define BAPadding 10 //间隔
#define BARadius 6 //圆角

//判断是否为4inch
#define Screen40inch ([UIScreen mainScreen].bounds.size.height == 568)
//判断是否为4.7inch
#define Screen47inch ([UIScreen mainScreen].bounds.size.height == 667)
//判断是否为5.5inch
#define Screen55inch ([UIScreen mainScreen].bounds.size.height == 736)
//判断是否为5.8inch
#define Screen58inch ([UIScreen mainScreen].bounds.size.height == 812)

//字体
#define BAThinFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightUltraLight]
#define BACommonFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightThin]
#define BABlodFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightBold]
#define BAWhiteColor [UIColor whiteColor] //白色

@interface Constant : NSObject

@end
