//
//  Observable.m
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "Observable.h"

@interface Observable()

@property (nonatomic) NSMutableArray<id<Observer>> * obsArray;

@property BOOL changed;

@end

@implementation Observable

- (instancetype)init
{
    self = [super init];
    if (self) {
        _obsArray = [[NSMutableArray alloc]initWithCapacity:5];
        _changed = NO;
    }
    return self;
}

//注册观察者 (订阅)
-(void)addObserver:(id<Observer>)o {
    [_obsArray addObject:o];
}

//删除某个观察者 （取消订阅）
-(void)deleteObserver:(id<Observer>)o {
    [_obsArray removeObject:o];
}

//删除所有观察者
-(void)deleteObservers {
    [_obsArray removeAllObjects];
}

//观察者数量
-(NSInteger)countObserver {
    return _obsArray.count;
}

//通知
-(void)notifyObservers {
    [self notifyObservers:nil];
}

-(void)notifyObservers:(NSObject *)msg {
    
    if (!_changed) {
        return;
    }
    
    [self clearChanged];
    
    for (id<Observer> o in _obsArray) {
        [o update:self msg:msg];
    }
}


//更新 数据
-(void)setChanged {
    _changed = YES;
}

//取消更新
-(void)clearChanged {
    _changed = NO;
}

//获取更新状态
-(BOOL)hasChanged {
    return _changed;
}



@end











