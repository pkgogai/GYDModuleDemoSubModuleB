//
//  GYDModuleBInterfaceDelegate.m
//  GYDModuleDemoInterface
//
//  Created by 宫亚东 on 2019/6/6.
//

#import "GYDModuleBInterfaceDelegate.h"
#import "GYDModuleBInterface.h"

@interface GYDModuleBInterfaceDelegate ()<GYDModuleBInterfaceProtocol>

@end

@implementation GYDModuleBInterfaceDelegate

+ (void)load {
    GYDModuleBInterface.delegate = [[self alloc] init];
}

- (NSInteger)count {
    static NSInteger count = 0;
    return ++count;
}

- (void)fun1 {
    
}
- (void)fun2 {
    
}
- (void)fun3 {
    
}

@end
