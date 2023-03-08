//
//  Session.m
//  takeAway
//
//  Created by Ray De Rose on 2023/03/08.
//  Copyright © 2023 Ray De Rose. All rights reserved.
//

#import "Stream.h"

@implementation Stream

-(Stream*)initWithStartTime:(float)startTime endTime:(float)endTime
{
    Stream *session = [Stream new];
    session.startTime = startTime;
    session.endTime = endTime;
    return session;;
}


@end

