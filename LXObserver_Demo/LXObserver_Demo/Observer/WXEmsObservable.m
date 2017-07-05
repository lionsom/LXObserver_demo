//
//  WXEmsObservable.m
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "WXEmsObservable.h"

@interface WXEmsObservable ()

@property (nonatomic) NSString * title;

@end

@implementation WXEmsObservable


-(void)setTitle:(NSString *)title {

    if (![self.title isEqualToString:title]) {
        [self setChanged];
    }
    
    _title = title;
}

-(void)push {
    [self notifyObservers:self.title];
}

@end
