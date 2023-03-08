//
//  SessionView.h
//  takeAway
//
//  Created by Ray De Rose on 2023/03/08.
//  Copyright © 2023 Ray De Rose. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stream.h"



NS_ASSUME_NONNULL_BEGIN

@interface StreamLineView : UIView

@property (nonatomic, strong) NSArray<Stream *> *streamLines;

@end

NS_ASSUME_NONNULL_END
