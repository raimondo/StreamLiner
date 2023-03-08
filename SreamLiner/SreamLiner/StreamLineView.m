//
//  SessionView.m
//  takeAway
//
//  Created by Ray De Rose on 2023/03/08.
//  Copyright © 2023 Ray De Rose. All rights reserved.
//

#import "StreamLineView.h"






@implementation StreamLineView

- (void)drawRect:(CGRect)rect {
//  CGContextRef context = UIGraphicsGetCurrentContext();
//  CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
//
//  for (int i = 0; i < self.sessions.count; i++) {
//    Session *session = self.sessions[i];
//    CGRect sessionRect = CGRectMake(session.startTime, i * 20.0, session.endTime - session.startTime, 10.0);
//    CGContextFillRect(context, sessionRect);
//  }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [[UIColor whiteColor] setFill];
       
       // Create the rectangle path
       UIBezierPath *rectanglePath = [UIBezierPath bezierPathWithRect:rect];
       
       // Fill the rectangle
       [rectanglePath fill];
    
    int increments = rect.size.width/24;
     
    for (int i = 0; i < self.streamLines.count; i++) {
        Stream *session = self.streamLines[i];
        CGRect sessionRect = CGRectMake(session.startTime*increments, i * 40, (session.endTime - session.startTime)*increments, 20.0);
        
        // Fill the session rectangle with the appropriate color
        UIColor *color =[UIColor blueColor];
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, sessionRect);
        
        // Add labels for the start and end times
        UILabel *startLabel = [self labelForTime:session.startTime];
        UILabel *endLabel = [self labelForTime:session.endTime];
        startLabel.center = CGPointMake(sessionRect.origin.x, sessionRect.origin.y - 10.0);
        endLabel.center = CGPointMake(sessionRect.origin.x + sessionRect.size.width, sessionRect.origin.y - 10.0);
        [self addSubview:startLabel];
        [self addSubview:endLabel];
   }
}


-(UILabel*)labelForTime:(float)time
{
    UILabel*  label = [[UILabel alloc]initWithFrame:CGRectMake(0,0,  60, 20)];
    label.text =[NSString stringWithFormat: @"%.0f", time];
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont boldSystemFontOfSize:16];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}


@end
