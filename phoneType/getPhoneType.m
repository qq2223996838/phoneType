//
//  getPhoneType.m
//  phoneType
//
//  Created by mooer on 2018/4/3.
//  Copyright © 2018年 mooer. All rights reserved.
//

#import "getPhoneType.h"
#import "sys/utsname.h"

@implementation getPhoneType

//获得设备型号
+ (NSString*)getPhoneModel
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSLog(@"型号是 -- %@",platform);
    
    //机型对照
    NSDictionary *machineDictionary = @{
                                        
                                        @"i386" : @"Xcode 模拟器",
                                        @"x86_64" : @"Xcode 模拟器",
                                        
                                        @"iPhone1,1" : @"iPhone 2G (A1203)",
                                        @"iPhone1,2" : @"iPhone 3G (A1241/A1324)",
                                        @"iPhone2,1" : @"iPhone 3GS (A1303/A1325)",
                                        @"iPhone3,1" : @"iPhone 4 (A1332)",
                                        @"iPhone3,2" : @"iPhone 4 (A1332)",
                                        @"iPhone3,3" : @"iPhone 4 (A1349)",
                                        @"iPhone4,1" : @"iPhone 4S (A1387/A1431)",
                                        @"iPhone5,1" : @"iPhone 5 (A1428)",
                                        @"iPhone5,2" : @"iPhone 5 (A1429/A1442)",
                                        @"iPhone5,3" : @"iPhone 5c (A1456/A1532)",
                                        @"iPhone5,4" : @"iPhone 5c (A1507/A1516/A1526/A1529)",
                                        @"iPhone6,1" : @"iPhone 5s (A1453/A1533)",
                                        @"iPhone6,2" : @"iPhone 5s (A1457/A1518/A1528/A1530)",
                                        @"iPhone7,1" : @"iPhone 6 Plus (A1522/A1524)",
                                        @"iPhone7,2" : @"iPhone 6 (A1549/A1586)",
                                        @"iPhone8,1" : @"iPhone 6s",
                                        @"iPhone8,2" : @"iPhone 6s Plus",
                                        @"iPhone8,4" : @"iPhone SE",
                                        @"iPhone9,1" : @"iPhone 7",
                                        @"iPhone9,2" : @"iPhone 7 Plus",
                                        @"iPhone9,3" : @"iPhone 7",
                                        @"iPhone9,4" : @"iPhone 7 Plus",
                                        @"iPhone10,1" : @"iPhone 8",
                                        @"iPhone10,4" : @"iPhone 8",
                                        @"iPhone10,2" : @"iPhone 8 Plus",
                                        @"iPhone10,5" : @"iPhone 8 Plus",
                                        @"iPhone10,3" : @"iPhone X",
                                        @"iPhone10,6" : @"iPhone X",
                                        
                                        @"iPod1,1" : @"iPod Touch 1G (A1213)",
                                        @"iPod2,1" : @"iPod Touch 2G (A1288)",
                                        @"iPod3,1" : @"iPod Touch 3G (A1318)",
                                        @"iPod4,1" : @"iPod Touch 4G (A1367)",
                                        @"iPod5,1" : @"iPod Touch 5G (A1421/A1509)",
                                        
                                        @"iPad1,1" : @"iPad 1G (A1219/A1337)",
                                        
                                        @"iPad2,1" : @"iPad 2 (A1395)",
                                        @"iPad2,2" : @"iPad 2 (A1396)",
                                        @"iPad2,3" : @"iPad 2 (A1397)",
                                        @"iPad2,4" : @"iPad 2 (A1395+New Chip)",
                                        @"iPad2,5" : @"iPad Mini 1G (A1432)",
                                        @"iPad2,6" : @"iPad Mini 1G (A1454)",
                                        @"iPad2,7" : @"iPad Mini 1G (A1455)",
                                        
                                        @"iPad3,1" : @"iPad 3 (A1416)",
                                        @"iPad3,2" : @"iPad 3 (A1403)",
                                        @"iPad3,3" : @"iPad 3 (A1430)",
                                        @"iPad3,4" : @"iPad 4 (A1458)",
                                        @"iPad3,5" : @"iPad 4 (A1459)",
                                        @"iPad3,6" : @"iPad 4 (A1460)",
                                        
                                        @"iPad4,1" : @"iPad Air (A1474)",
                                        @"iPad4,2" : @"iPad Air (A1475)",
                                        @"iPad4,3" : @"iPad Air (A1476)",
                                        @"iPad4,4" : @"iPad Mini 2G (A1489)",
                                        @"iPad4,5" : @"iPad Mini 2G (A1490)",
                                        @"iPad4,6" : @"iPad Mini 2G (A1491)",
                                        
                                        };
    
    NSString *deviceMachine = [machineDictionary objectForKey:platform];
    
    //如果字典中未找到对应机型，则返回手机类型
    if (deviceMachine.length == 0) {
        
        deviceMachine = platform;
    }
    
    NSLog(@"\n类型 : %@ \n机型 : %@",platform, deviceMachine);
    
    return deviceMachine;
}

@end
