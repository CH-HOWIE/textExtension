//
//  DIYTestResult.m
//  testMJExtension
//
//  Created by HOWIE-CH on 16/7/2.
//  Copyright © 2016年 Howie. All rights reserved.
//

#import "DIYTestResult.h"

#import "DIYPersonItem.h"

@implementation DIYTestResult
+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    
    return @{
             @"hello" : @"HeWeather data service"
             
             };
    
}
+ (NSDictionary *)mj_objectClassInArray {
    return @{
             @"hello" : [DIYPersonItem class]
             
             };
}
@end
