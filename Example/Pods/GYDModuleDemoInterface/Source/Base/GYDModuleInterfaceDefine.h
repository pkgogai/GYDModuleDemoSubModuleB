//
//  GYDModuleInterfaceDefine.h
//  GYDModuleDemoInterface
//
//  Created by 宫亚东 on 2019/6/6.
//

#import <Foundation/Foundation.h>

#pragma mark - 接口简写宏定义

#define _GYDModuleInterfaceRegister(className, protocolName) \
protocol className##protocolName; \
@interface className : NSObject \
@property (nonatomic, class) id<className##protocolName> delegate; \
@end \
@protocol className##protocolName <NSObject>

#define GYDModuleInterfaceRegister(name) _GYDModuleInterfaceRegister(name, Protocol)


#define _GYDModuleInterfaceImplementation(className, protocolName) \
@implementation className \
static id ModuleDelegate = nil; \
static BOOL DidUseDelegate = NO; \
+ (void)load { \
    if (!ModuleDelegate) { \
        ModuleDelegate = (id)[[GYDDefaultInterfaceDelegate alloc] initWithInterfaceName:NSStringFromClass(self)]; \
    } \
} \
+ (void)setDelegate:(id)delegate { \
    ModuleDelegate = delegate; \
    NSAssert(!DidUseDelegate, @"接口的delegate需要在使用前设置。"); \
} \
+ (id)delegate { \
    DidUseDelegate = YES; \
    return ModuleDelegate; \
} \
@end

#define GYDModuleInterfaceImplementation(name) _GYDModuleInterfaceImplementation(name, Protocol)


@interface GYDDefaultInterfaceDelegate : NSObject

- (instancetype)initWithInterfaceName:(NSString *)interfaceName;

@end
