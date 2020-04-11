//
//  main.m
//  Lab.13
//
//  Created by Mac on 2020-04-05.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    char str[1024];
    @autoreleasepool {
        while (YES) {
            NSLog(@"input -> ");
            fgets(str, 1024, stdin);
            NSString* input = [[[NSString alloc] initWithUTF8String:str] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//            NSString *string = @"Hello";
            NSLog(@"String was -> %@", input);
            input = [input stringByPigLatinization];
            NSLog(@" In Pig latin: %@",  input);
            
        }
    }
    return 0;
}
