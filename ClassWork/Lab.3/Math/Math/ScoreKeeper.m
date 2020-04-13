//
//  ScoreKeeper.m
//  Math
//
//  Created by Mac on 2020-04-13.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString*)Score {
    return [NSString stringWithFormat:@"Score: %ld right, %ld wrong,  percentage - %ld%%", _right, _wrong, _perc = (100*_right / (_right +_wrong))];
}
@end
