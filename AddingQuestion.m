//
//  AddingQuestion.m
//  Maths
//
//  Created by Carlos andres Diaz bravo  on 2020-03-25.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import "AddingQuestion.h"


@interface AddingQuestion(){
}
@end

@implementation AddingQuestion{
}
- (instancetype) initWithRandNum1:(int) RandNum1 andRandNum2:(int) RandNum2 andstartTime:(NSDate*) startTime{
    self = [super init];
    if (self){
        _RandNum1 = RandNum1;
        _RandNum2 = RandNum2;
        _startTime = [NSDate date];
    }
    return self;
}

- (BOOL) answer:(int) ans{
    _endtime = [NSDate date];
    if(_RandNum1 + _RandNum2 == ans ){
        return true;
    }
    return false;
}


- (NSTimeInterval) answerTime:(NSDate*) anotherDate{
    [self answerTime:anotherDate];
    return [[NSDate date] timeIntervalSinceDate:anotherDate];
}
                                           
- (int) ScoreKeeper:(int) r andW: (int) w{
    return (r * 100)/(r + w);
}

@end
