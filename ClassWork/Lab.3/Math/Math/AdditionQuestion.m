//
//  AdditionQuestion.m
//  Math
//
//  Created by Mac on 2020-04-13.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init{
    if (self = [super init]) {
        NSInteger   num1        = arc4random_uniform(10) + 100;
        NSInteger   num2        = arc4random_uniform(10) + 100;
        _question               = [NSString stringWithFormat:@"%ld + %ld ?", num1, num2];
        _answer                 = num1 + num2;
        
    }
    return self;
}



@end
