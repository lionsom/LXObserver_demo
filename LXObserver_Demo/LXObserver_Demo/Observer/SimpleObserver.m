//
//  SimpleObserver.m
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "SimpleObserver.h"

@implementation SimpleObserver

// 实现
-(void)update:(Observable *)o msg:(NSObject *)msg {
    NSLog(@"Simple收到了消息：%@",msg);
}


@end
