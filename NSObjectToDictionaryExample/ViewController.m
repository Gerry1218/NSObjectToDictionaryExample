//
//  ViewController.m
//  Example
//
//  Created by Gerry on 16/4/28.
//  Copyright © 2016年 Gerry. All rights reserved.
//

#import "ViewController.h"
#import "XXMessage.h"
#import "NSObject+NSDictionary.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    XXMessage *msg = [XXMessage fakeMessage];
    NSDictionary *dict = [msg toDictionary];
    
    NSLog(@"XXMessage ==> NSDictionary:%@", dict);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
