//
//  Person.h
//  runtime
//
//  Created by BM on 16/5/5.
//  Copyright © 2016年 BM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_variableString;
}

// 默认会是什么呢？
@property (nonatomic, copy) NSString *name;

// 默认是assign类型
@property (nonatomic, copy) NSString *firtName;

// 默认是strong类型
@property (nonatomic, strong) NSMutableArray *array;

// 默认是assign类型
@property (nonatomic, assign) NSUInteger age;

// 默认是assign类型
@property (nonatomic, assign) BOOL sex;

// 获取所有的属性名
- (NSArray *)allProperties;
- (void)setAllProperties:(NSArray *)arry;




// 获取对象的所有属性名和属性值
- (NSDictionary *)allPropertyNamesAndValues;

// 获取对象的所有方法名
- (void)allMethods;

// 获取对象的成员变量名称
- (NSArray *)allMemberVariables;

+ (void)eat;

@end
