//
//  ViewController.m
//  YYLog
//
//  Created by B2吴XX on 2017/1/24.
//  Copyright © 2017年 B2吴XX. All rights reserved.
//

#import "ViewController.h"
#import "YYObject.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    YYObject *obj = [YYObject new];
//    obj.firstName = @"wu";
//    obj.lastName = @"seya";

//    NSLog(@"obj = %@",obj);
    
    Person *person = [Person new];
//    person.lastName = @"fdkhfkd";
//    person.firstName = @"dfhdf";
//    person.fullName = [NSString stringWithFormat:@"%@%@",person.firstName,person.lastName];
    person.fullName = [NSString stringWithFormat:@"%@",@"wuseya"];
    person.age = 20;
    person.isMan = YES;
    person.money = 134444;
    
    YYLog(@"person:%@",person);
    
}

@end
