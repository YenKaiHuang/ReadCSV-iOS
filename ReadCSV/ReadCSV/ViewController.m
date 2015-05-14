//
//  ViewController.m
//  ReadCSV
//
//  Created by yenkai huang on 2015/5/14.
//  Copyright (c) 2015年 yenkai huang. All rights reserved.
//

#import "ViewController.h"

#import "ReadCSV.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"cvs to array: %@", [ReadCSV readCSVwithFileName:@"example"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
