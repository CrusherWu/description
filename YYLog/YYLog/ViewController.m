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
    
    NSMutableArray *mutableArray = [NSMutableArray array];
    for (int i = 0; i < 5; i++) {
        Person *person = [Person new];
        person.fullName = [NSString stringWithFormat:@"person's fullName is:去你妹的%d",i];
        person.money = i;
        person.age = i;
        
        [mutableArray addObject:person];
    }
    NSLog(@"mutableArray:%@",mutableArray);
}

@end
