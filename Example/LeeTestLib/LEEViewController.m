//
//  LEEViewController.m
//  LeeTestLib
//
//  Created by wwjz on 08/23/2022.
//  Copyright (c) 2022 wwjz. All rights reserved.
//

#import "LEEViewController.h"
#import "LeeTestLog.h"

@interface LEEViewController ()

@end

@implementation LEEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[LeeTestLog new] lee_log];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
