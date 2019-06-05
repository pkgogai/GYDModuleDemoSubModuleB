//
//  ViewController.m
//  Example
//
//  Created by 宫亚东 on 2019/6/6.
//  Copyright © 2019年 宫亚东. All rights reserved.
//

#import "ViewController.h"
#import "GYDModuleBInterface.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"%zd", [GYDModuleBInterface.delegate count]);
        
    });
}


@end
