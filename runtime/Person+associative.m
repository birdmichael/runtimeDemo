//
//  Person+associative.m
//  runtime
//
//  Created by BM on 16/5/6.
//  Copyright © 2016年 BM. All rights reserved.
//

#import "Person+associative.h"
#import <objc/runtime.h>

@implementation Person (associative)


- (void)setSonName:(NSString *)sonName{
    objc_setAssociatedObject(self, @selector(sonName), sonName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)sonName{
    NSObject *obj = objc_getAssociatedObject(self, @selector(sonName));
    if (obj && [obj isKindOfClass:[NSString class]]) {
        return (NSString *)obj;
    }
    
    return nil;
}
@end
