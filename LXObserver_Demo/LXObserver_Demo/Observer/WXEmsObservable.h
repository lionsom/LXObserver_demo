//
//  WXEmsObservable.h
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Observable.h"

// 微信公众号： 被观察者
@interface WXEmsObservable : Observable

-(void)setTitle:(NSString *)title;

-(void)push;

@end
