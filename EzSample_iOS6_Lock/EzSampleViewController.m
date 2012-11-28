//
//  EzSampleViewController.m
//  EzSample_iOS6_Lock
//
//  Created by 熊谷 友宏 on H.24/11/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleViewController.h"

#import "EzSampleDoubleBase.h"
#import "EzSampleDoubleSynchronized.h"
#import "EzSampleDoubleRecursiveMutex.h"
#import "EzSampleDoubleFastMutex.h"
#import "EzSampleDoubleCheckErrorMutex.h"
#import "EzSampleDoubleSemaphore.h"

@interface EzSampleViewController ()

@end

@implementation EzSampleViewController
{
	__strong EzSampleDoubleBase* _test;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	
//	_test = [[EzSampleDoubleSynchronized alloc] init];
//	_test = [[EzSampleDoubleRecursiveMutex alloc] init];
//	_test = [[EzSampleDoubleFastMutex alloc] init];
//	_test = [[EzSampleDoubleCheckErrorMutex alloc] init];
	_test = [[EzSampleDoubleSemaphore alloc] init];
	
	[_test performSelector:@selector(test) withObject:nil afterDelay:1.0];
}

@end
