//
//  Observable.h
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Observer.h"


//被观察者：老师 通知 同学们上课
@interface Observable : NSObject

//注册观察者 (订阅)
-(void)addObserver:(id<Observer>)o;

//删除某个观察者 （取消订阅）
-(void)deleteObserver:(id<Observer>)o;

//删除所有观察者
-(void)deleteObservers;

//观察者数量
-(NSInteger)countObserver;


//通知
-(void)notifyObservers;
-(void)notifyObservers:(NSObject *)msg;

//更新 数据
-(void)setChanged;

//取消更新
-(void)clearChanged;

//获取更新状态
-(BOOL)hasChanged;

@end
