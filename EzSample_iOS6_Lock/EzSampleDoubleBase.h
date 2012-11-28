//
//  EzSampleDoubleBase.h
//  EzSample_iOS6_Lock
//
//  Created by 熊谷 友宏 on H.24/11/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EzSampleDoubleBase : NSObject

- (void)test;

#pragma mark -
#pragma mark テストクラスでオーバーライドします。

- (void)callLock;
- (void)callUnlock;

#pragma mark -
#pragma mark 必要に応じてオーバーライドします。

- (void)initialized;
- (void)finalized;

- (void)firstMethod;
- (void)secondMethod;
- (void)thirdMethodInBackground;

- (void)firstMethodDidCall;
- (void)secondMethodDidCall;
- (void)thirdMethodDidCallInBackground;

@end
