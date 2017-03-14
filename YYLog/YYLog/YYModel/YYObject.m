
//
//  YYObject.m
//  YYLog
//
//  Created by B2吴XX on 2017/1/24.
//  Copyright © 2017年 B2吴XX. All rights reserved.
//

#import "YYObject.h"
#import <objc/runtime.h>

@implementation YYObject

- (instancetype)init
{
    if (self = [super init]) {
    
    }
    return self;
}

-(NSString *)description
{
    NSLog(@"father's description!");
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (NSUInteger i = 0; i < count; i ++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *key = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:key];
        [dict setObject:value forKey:key];
    }
    free(ivars);
    
    return [NSString stringWithFormat:@"< %@: %p, %@>",[self class],self,dict];
    
//    return [NSString stringWithFormat:@"< %@: %p,firstName: %@,lastName:%@>",[self class],self,_firstName,_lastName];
}

@end
