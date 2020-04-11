//
//  main.m
//  Lab13.1
//
//  Created by Mac on 2020-04-06.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSLog(@">");
        char str[100];
        fgets(str, 100, stdin);
        
        NSString* input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"You said %@", input);
        NSLog(@"String in Pig Latin", strPL);
    }
    return 0;
}
