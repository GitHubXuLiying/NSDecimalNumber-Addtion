//
//  ViewController.m
//  精确计算
//
//  Created by xuliying on 16/12/19.
//  Copyright © 2016年 xly. All rights reserved.
//

#import "ViewController.h"
#import "NSDecimalNumber+Addtion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     
     extern NSDecimalNumber *SNAdd(id strOrNum1,id strOrNum2);
     extern NSDecimalNumber *SNSub(id strOrNum1,id strOrNum2);
     extern NSDecimalNumber *SNMul(id strOrNum1,id strOrNum2);
     extern NSDecimalNumber *SNDiv(id strOrNum1,id strOrNum2);
     
     
     extern NSDecimalNumber *SNMin(id strOrNum1,id strOrNum2);
     extern NSDecimalNumber *SNMax(id strOrNum1,id strOrNum2);
     
     
     extern NSDecimalNumber *SNAdd_handler(id strOrNum1,id strOrNum2,NSRoundingMode mode,int scale);
     extern NSDecimalNumber *SNSub_handler(id strOrNum1,id strOrNum2,NSRoundingMode mode,int scale);
     extern NSDecimalNumber *SNMul_handler(id strOrNum1,id strOrNum2,NSRoundingMode mode,int scale);
     extern NSDecimalNumber *SNDiv_handler(id strOrNum1,id strOrNum2,NSRoundingMode mode,int scale);
     
     
     extern NSDecimalNumber *SNMin_handler(id strOrNum1,id strOrNum2,NSRoundingMode mode,int scale);
     extern NSDecimalNumber *SNMax_handler(id strOrNum1,id strOrNum2,NSRoundingMode mode,int scale);
     
     */
    
    
    NSString *str1 = @"12345.6789";
    NSNumber *num2 = @(12345.6788);
    
    //加
    NSLog(@"%@",SNAdd(str1, num2)); //24691.3577
    //减
    NSLog(@"%@",SNSub(str1, num2));//0.0001
    //乘
    NSLog(@"%@",SNMul(str1, num2));//152415786.26733732
    //除
    NSLog(@"%@",SNDiv(str1, num2));//1.00000000810000013932000239630404121642
    //比较大小
    NSLog(@"%ld",(long)SNCompare(str1, num2));//1
    
    //取小
    NSLog(@"%@",SNMin(str1, num2));//12345.6788
    //取大
    NSLog(@"%@",SNMax(str1, num2));//12345.6789
    
    //四舍五入 保留两位小数
    NSLog(@"%@",handlerDecimalNumber(str1, NSRoundPlain, 2));//12345.68
    
    //向上入 保留两位小数
    NSLog(@"%@",handlerDecimalNumber(str1, NSRoundUp, 2));//12345.68
    
    //向下舍 保留两位小数
    NSLog(@"%@",handlerDecimalNumber(str1, NSRoundDown, 2));//12345.67
    
    //Bankers
    NSLog(@"%@",handlerDecimalNumber(str1, NSRoundBankers, 2));//12345.68


    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
