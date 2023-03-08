//
//  ViewController.m
//  SreamLiner
//
//  Created by Ray De Rose on 2023/03/08.
//

#import "ViewController.h"
#import "StreamLineView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    NSArray *sessions = @[
        [[Stream alloc] initWithStartTime:5 endTime:12],
        [[Stream alloc] initWithStartTime:10 endTime:16],
        [[Stream alloc] initWithStartTime:19 endTime:22]
    ];
    
    NSArray *sessionsSorted = [sessions sortedArrayUsingComparator:^NSComparisonResult(Stream *session1, Stream *session2) {
        return session1.startTime < session2.startTime ? NSOrderedAscending : NSOrderedDescending;
    }];
    
    float totalDuration = 0.0;
    float currentEndTime = -INFINITY;
    
    for (Stream *stream in sessionsSorted) {
        if (stream.startTime < currentEndTime) {
            totalDuration += stream.endTime - currentEndTime;
            currentEndTime = stream.endTime;
        } else {
            totalDuration += stream.endTime - stream.startTime;
            currentEndTime = stream.endTime;
        }
    }
    
    
    StreamLineView *streamLineV = [[StreamLineView alloc] initWithFrame:CGRectMake(0, 100, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    streamLineV.streamLines = sessions;
    [self.view addSubview:streamLineV];
    
    UILabel*  label = [[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2 -140,260,  280, 20)];
    label.text =[NSString stringWithFormat: @"Effective streaming duration: %.2f", totalDuration];
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont boldSystemFontOfSize:16];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}


@end
