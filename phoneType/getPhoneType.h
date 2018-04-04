//
//  getPhoneType.h
//  phoneType
//
//  Created by mooer on 2018/4/3.
//  Copyright © 2018年 mooer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface getPhoneType : NSObject

//获得设备型号
+ (NSString *)getPhoneModel;

//获得设备系统版本
+ (NSString *)getPhoneSystem;

@end
