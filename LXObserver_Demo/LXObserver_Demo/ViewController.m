//
//  ViewController.m
//  LXObserver_Demo
//
//  Created by linxiang on 2017/7/5.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "ViewController.h"

#import "Observable.h"

#import "WXEmsObservable.h"

#import "CafferyObserver.h"
#import "SimpleObserver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // 测试
    // 被观察者
    Observable * observable = [[Observable alloc]init];
    
    // 创建观察者
    id<Observer> caffery = [[CafferyObserver alloc]init];
    id<Observer> simple = [[SimpleObserver alloc]init];
    
    // 添加观察者
    [observable addObserver:caffery];
    [observable addObserver:simple];
    
    // 确定 接收通知
    [observable setChanged];
    // 发送通知
    [observable notifyObservers:@"AAAAAAAAAA"];
    
    
    //测试 微信公众号
    WXEmsObservable * observable_1 = [[WXEmsObservable alloc]init];
    
    // 创建观察者
    id<Observer> caffery_1 = [[CafferyObserver alloc]init];
    id<Observer> simple_1 = [[SimpleObserver alloc]init];
    
    // 添加观察者
    [observable_1 addObserver:caffery_1];
    [observable_1 addObserver:simple_1];
    
    [observable_1 setTitle:@"Fuck you"];
    [observable_1 push];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
