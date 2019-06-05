//
//  GYDModuleInterfaceDefine.m
//  GYDModuleDemoInterface
//
//  Created by 宫亚东 on 2019/6/6.
//

#import "GYDModuleInterfaceDefine.h"

@implementation GYDDefaultInterfaceDelegate
{
    NSString *_interfaceName;
}
- (instancetype)initWithInterfaceName:(NSString *)interfaceName {
    self = [super init];
    if (self) {
        _interfaceName = interfaceName;
    }
    return self;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature signatureWithObjCTypes:"v@:"];
}
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"[无法执行] %@ %@", _interfaceName, NSStringFromSelector(anInvocation.selector));
}

@end
