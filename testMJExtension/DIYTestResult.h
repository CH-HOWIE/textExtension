//
//  DIYTestResult.h
//  testMJExtension
//
//  Created by HOWIE-CH on 16/7/2.
//  Copyright © 2016年 Howie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DIYCityItem.h"
#import "MJExtension.h"

@interface DIYTestResult : NSObject <MJKeyValue>
/** city */
@property (nonatomic, strong) DIYCityItem *city;
/** <#tempArray#> */
@property (nonatomic, strong) NSArray *hello;
@end
