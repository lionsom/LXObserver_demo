//
//  Observer.h
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observable;

// 观察者 -> 抽象的同学
@protocol Observer <NSObject>

-(void)update:(Observable *)o msg:(NSObject *)msg;

@end

