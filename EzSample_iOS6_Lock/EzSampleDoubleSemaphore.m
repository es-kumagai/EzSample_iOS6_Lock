//
//  EzSampleDoubleSemaphore.m
//  EzSample_iOS6_Lock
//
//  Created by 熊谷 友宏 on H.24/11/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleDoubleSemaphore.h"

@implementation EzSampleDoubleSemaphore
{
	dispatch_semaphore_t _semaphore;
}

- (void)initialized
{
	_semaphore = dispatch_semaphore_create(1);
}

- (void)finalized
{
//	dispatch_release(_semaphore);
}

- (void)callLock
{
	dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_FOREVER);
	NSLog(@"Semaphore wait.");
}

- (void)callUnlock
{
	NSLog(@"Semaphore signal.");
	dispatch_semaphore_signal(_semaphore);
}

@end
