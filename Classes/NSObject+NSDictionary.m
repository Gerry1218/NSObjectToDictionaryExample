//
//  NSObject+NSDictionary.m
//  Example
//
//  Created by Gerry on 16/4/28.
//  Copyright © 2016年 Gerry. All rights reserved.
//

#import "NSObject+NSDictionary.h"
#import <objc/runtime.h>

@implementation NSObject (NSDictionary)

#pragma mark - public
- (NSDictionary *)toDictionary {
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:4];
    
    Class cls = self.class;
    NSString *clsName = NSStringFromClass(cls);
    
    while (![clsName isEqualToString:NSStringFromClass([NSObject class])]) {
        
        NSLog(@"---- Class[%@] start ----", clsName);
        
        unsigned count = 0;
        Ivar *vars = class_copyIvarList(cls, &count);
        for (int i = 0; i < count; i++) {
            
            NSString *name = [self memberNameWithIvars:vars atIndex:i];
            id obj = [self valueForKey:name];
            [dict setValue:obj forKey:name];
            
            NSLog(@"%@:%@", name, obj);
        }
        free(vars);
        
        NSLog(@"---- Class[%@] end ----", clsName);
        
        cls = [cls superclass];
        clsName = NSStringFromClass(cls);
    }
    
    return dict;
}

#pragma mark - Private

- (NSString *)memberNameWithIvars:(Ivar *)vars atIndex:(NSInteger) index {
    
    const char *name = ivar_getName(vars[index]);
    NSString *mName = [NSString stringWithFormat:@"%s", name];
    
    return mName;
}

@end
