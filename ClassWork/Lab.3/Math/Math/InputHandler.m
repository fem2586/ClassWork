//
//  InputHandler.m
//  Math
//
//  Created by Mac on 2020-04-13.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler


+(NSString *)getUserInput:(int) maxLenght
{
    if (maxLenght <1) { maxLenght= 255; }
    char inputChars[maxLenght];
    char *result= fgets(inputChars, maxLenght, stdin);
    if (result != NULL)
        {
            return [[NSString stringWithUTF8String:inputChars ] stringByTrimmingCharactersInSet:
                   [NSCharacterSet whitespaceAndNewlineCharacterSet ]];
        }
    return NULL;
}

@end
