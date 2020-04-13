//
//  main.m
//  Math
//
//  Created by Mac on 2020-04-13.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        ScoreKeeper *scoreK = [[ScoreKeeper alloc] init];
        while (YES)
            {
                AdditionQuestion *addQ  = [[AdditionQuestion alloc] init];
                NSString         *input = [InputHandler getUserInput:128];
                NSLog(@"%@", addQ.question);
                
                if ([input isEqualToString:@"e"]) {break;}
                else if (addQ.answer == input.intValue)
                    { NSLog(@"Right!"); scoreK.right++ ; }
                else{ NSLog(@"Wrong!"); scoreK.wrong++ ; }
                NSLog(@"%@", [scoreK Score])           ;
            }
    }
    return 0;
}
