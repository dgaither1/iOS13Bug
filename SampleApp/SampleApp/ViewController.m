//
//  ViewController.m
//  SampleApp
//
//  Created by Gaither, David on 6/20/19.
//  Copyright © 2019 dg. All rights reserved.
//

#import "ViewController.h"
#import "TestStaticLib.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    TestStaticLib *testClass = [[TestStaticLib alloc] init];

    // Log whether the device you are running on is running iOS 11 or greater
    NSLog([testClass testAvailableCommand]);
}


@end
