#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GYDModuleInterfaceDefine.h"
#import "GYDModuleAInterface.h"
#import "GYDModuleBInterface.h"

FOUNDATION_EXPORT double GYDModuleDemoInterfaceVersionNumber;
FOUNDATION_EXPORT const unsigned char GYDModuleDemoInterfaceVersionString[];

