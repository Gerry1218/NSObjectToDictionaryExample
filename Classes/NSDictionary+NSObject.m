//
//  NSDictionary+NSObject.m
//  NSObjectToDictionaryExample
//
//  Created by Gerry on 16/4/28.
//  Copyright © 2016年 Gerry. All rights reserved.
//

#import "NSDictionary+NSObject.h"

@implementation NSDictionary (NSObject)

- (id)generateObjectWith:(Class)cls {
    id object = [[cls alloc] init];;
    
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [object setValue:obj forKey:key];
    }];
    
    return object;
}

@end
