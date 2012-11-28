//
//  EzSampleDoubleFastMutex.m
//  EzSample_iOS6_Lock
//
//  Created by 熊谷 友宏 on H.24/11/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleDoubleFastMutex.h"
#import <pthread.h>

@implementation EzSampleDoubleFastMutex
{
	pthread_mutex_t _mutex;
}

- (void)initialized
{
	pthread_mutexattr_t _mutexAttr;
	
	pthread_mutexattr_init(&_mutexAttr);
	pthread_mutexattr_settype(&_mutexAttr, PTHREAD_MUTEX_NORMAL);
	
	pthread_mutex_init(&_mutex, &_mutexAttr);
	
	pthread_mutexattr_destroy(&_mutexAttr);
}

- (void)finalized
{
	pthread_mutex_destroy(&_mutex);
}

- (void)callLock
{
	NSLog(@"Lock (%d)", pthread_mutex_lock(&_mutex));
}

- (void)callUnlock
{
	NSLog(@"Unlock (%d)", pthread_mutex_unlock(&_mutex));
}

@end
