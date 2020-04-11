//
//  NSString+PigLatin.m
//  Lab.13
//
//  Created by Mac on 2020-04-07.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
-(NSString*) stringByPigLatinization{
    NSString *pigLatinW = @"" ;
        
        NSCharacterSet *conson = [NSCharacterSet characterSetWithCharactersInString:@"AEIUOaeuio"];
        NSMutableArray *consonCh = [[self componentsSeparatedByCharactersInSet:conson] mutableCopy];
        NSString *firstCh = [consonCh objectAtIndex:0];
        NSMutableArray *charac = [[NSMutableArray alloc] initWithCapacity:[self length]];
        
        for (int i=0 ; i< [self length]; i++) {
            NSString *ichar = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
            [charac addObject:ichar];
        }
        
        NSRange range = NSMakeRange(0, [firstCh length]);
        [charac removeObjectsInRange:range];
        [charac addObject:firstCh];
        [charac addObject:@"ay"];
        pigLatinW = [charac componentsJoinedByString:@""];
        pigLatinW = [NSString stringWithFormat:@"%@%@", [[pigLatinW substringToIndex:1] uppercaseString], [pigLatinW substringFromIndex:1]];
            
    
    return pigLatinW;
    
}

@end
