//
//  Session.h
//  takeAway
//
//  Created by Ray De Rose on 2023/03/08.
//  Copyright © 2023 Ray De Rose. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stream : NSObject

@property (nonatomic, assign) float startTime;
@property (nonatomic, assign) float endTime;

-(Stream*)initWithStartTime:(float)startTime endTime:(float)endTime;

@end

NS_ASSUME_NONNULL_END
