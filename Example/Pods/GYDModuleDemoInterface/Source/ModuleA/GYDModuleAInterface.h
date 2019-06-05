//
//  GYDModuleAInterface.h
//  Pods-Example
//
//  Created by 宫亚东 on 2019/6/6.
//

#import <Foundation/Foundation.h>

@protocol GYDModuleAInterfaceProtocol <NSObject>

- (void)showModuleAViewController;

@end

@interface GYDModuleAInterface : NSObject

@property (nonatomic, class) id<GYDModuleAInterfaceProtocol> delegate;

@end
