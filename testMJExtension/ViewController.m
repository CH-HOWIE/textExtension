//
//  ViewController.m
//  testMJExtension
//
//  Created by HOWIE-CH on 16/7/2.
//  Copyright © 2016年 Howie. All rights reserved.
//

#import "ViewController.h"
#import "DIYTestResult.h"
#import "MJExtension.h"
#import "DIYTest1Result.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self testJsonExtension];
    [self test1JsonExtension];
    

    
}

// ----- key : HeWeather data service -----
- (void)testJsonExtension {
    // ----- 读取json数据 -----
    NSString *jsonPath = [[NSBundle mainBundle]pathForResource:@"test.json" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:jsonPath];
    // ----- json 序列化 -----
    NSDictionary *resultDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    // ----- 字典转模型 -----
    DIYTestResult *result = [DIYTestResult mj_objectWithKeyValues:resultDict];
    NSLog(@"%s--%@", __func__, result.hello);
    
    
    
}

// ----- key : HeWeather data service 3.0 -----
- (void)test1JsonExtension {
    
    // ----- 读取json数据 -----
    NSString *json1Path = [[NSBundle mainBundle]pathForResource:@"test1.json" ofType:nil];
    NSData *data1 = [NSData dataWithContentsOfFile:json1Path];
    // ----- json 序列化 -----
    NSDictionary *result1Dict = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:nil];
    // ----- 字典转模型 -----
    DIYTest1Result *result1 = [DIYTest1Result mj_objectWithKeyValues:result1Dict];
    NSLog(@"%s--%@", __func__, result1.hello);
    
}
@end
