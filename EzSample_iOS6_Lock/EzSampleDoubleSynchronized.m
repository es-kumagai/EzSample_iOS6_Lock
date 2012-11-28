//
//  EzSampleDoubleSynchronized.m
//  EzSample_iOS6_Lock
//
//  Created by 熊谷 友宏 on H.24/11/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleDoubleSynchronized.h"

@implementation EzSampleDoubleSynchronized

- (void)firstMethod
{
	NSLog(@"* Entering first Method.");
	
	NSLog(@"* Will Lock in first Method.");
	@synchronized (self)
	{
		[self callLock];
		NSLog(@"> Did Lock in first Method.");
		
		[self firstMethodDidCall];
		
		[self secondMethod];

		NSLog(@"> Will Unlock in first Method.");
	}
	NSLog(@"< Did Unlock in first Method.");
	
	NSLog(@"< Exit first Method.");
}

- (void)secondMethod
{
	NSLog(@"** Entering second Method.");
	
	NSLog(@"** Will Lock in second Method.");
	@synchronized (self)
	{
		NSLog(@">> Did Lock in second Method.");
		
		[self secondMethodDidCall];
		
		NSLog(@">> The third method will raise.");
		[self performSelectorOnMainThread:@selector(thirdMethodInBackground) withObject:nil waitUntilDone:YES];

		NSLog(@">> Will Unlock in second Method.");
	}
	NSLog(@"<< Did Unlock in second Method.");
	
	NSLog(@"<< Exit second Method.");
}

- (void)thirdMethodInBackground
{
	NSLog(@"*** Entering third Method.");
	
	NSLog(@"*** Will Lock in third Method.");
	@synchronized (self)
	{
		NSLog(@">>> Did Lock in third Method.");
		
		[self thirdMethodDidCallInBackground];
		
		NSLog(@">>> Will Unlock in second Method.");
	}
	NSLog(@"<<< Did Unlock in second Method.");
	
	NSLog(@"<<< Exit second Method.");
}

@end
