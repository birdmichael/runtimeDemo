//
//  Experience.m
//  runtime
//
//  Created by BM on 16/5/9.
//  Copyright © 2016年 BM. All rights reserved.
//

#import "Experience.h"
#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "Person+associative.h"

@implementation Experience


- (void)test1_2{
    
    Person *p = [[Person alloc] init];
    p.name = @"BirdMichael";
    
    size_t size = class_getInstanceSize(p.class);
    NSLog(@"classSize = %ld", size);
    
    for (NSString *propertyName in p.allProperties) {
        NSLog(@"%@", propertyName);
    }
}
- (void)test1_3{
    Person *p = [[Person alloc] init];
    p.name = @"BirdMichael";
    p.age = 8;
    NSDictionary *dict = p.allPropertyNamesAndValues;
    for (NSString *propertyName in dict.allKeys) {
        NSLog(@"propertyName: %@ propertyValue: %@", propertyName, dict[propertyName]); }
}
- (void)test1_4{
    Person *p = [[Person alloc] init];
    for (NSString *varName in p.allMemberVariables) {
        NSLog(@"%@", varName);
    }
}
- (void)test1_5{
    Person *p = [[Person alloc] init];
    p.name = @"BirdMichael";
    p.age = 8;
    objc_msgSend(p, @selector(allProperties));
}
- (void)test1_6{
    Person *p = [[Person alloc] init];
    p.name = @"BirdMichael";
    p.sonName = @"BirdMichael's son";
    NSLog(@"%@ > %@",p.name ,p.sonName);
}
@end
