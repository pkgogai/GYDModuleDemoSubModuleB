//
//  GYDModuleAInterface.m
//  Pods-Example
//
//  Created by 宫亚东 on 2019/6/6.
//

#import "GYDModuleAInterface.h"
#import "GYDModuleInterfaceDefine.h"

@implementation GYDModuleAInterface

static id<GYDModuleAInterfaceProtocol> ModuleDelegate = nil;
static BOOL DidUseDelegate = NO;

+ (void)load {
    if (!ModuleDelegate) {
        ModuleDelegate = (id)[[GYDDefaultInterfaceDelegate alloc] initWithInterfaceName:NSStringFromClass(self)];
    }
}

+ (void)setDelegate:(id<GYDModuleAInterfaceProtocol>)delegate {
    ModuleDelegate = delegate;
    NSAssert(!DidUseDelegate, @"接口的delegate需要在使用前设置。");
}

+ (id<GYDModuleAInterfaceProtocol>)delegate {
    DidUseDelegate = YES;
    return ModuleDelegate;
}

/*
 规定：接口的代理以及项目中其它的注册方法都是在+load中设置，而使用只会在application:didFinish 之后。
 但要是真有哪个项目非要在+load中甚至更早的时候调用代理，那只能向下面这样硬编码一下类名了
 */

//+ (id<GYDModuleAInterfaceProtocol>)delegate {
//    static id<GYDModuleAInterfaceProtocol> delegate = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        delegate = [[NSClassFromString(@"GYDModuleAInterfaceDelegate") alloc] init];
//    });
//    return delegate;
//}


@end
