//
//  Person.h
//  YYLog
//
//  Created by B2吴XX on 2017/1/24.
//  Copyright © 2017年 B2吴XX. All rights reserved.
//

#import "YYObject.h"

@interface Person : YYObject

@property (nonatomic,copy) NSString *fullName;
@property (nonatomic,assign) int age;
@property (nonatomic,assign) BOOL isMan;
@property (nonatomic,assign) NSInteger money;

@end
