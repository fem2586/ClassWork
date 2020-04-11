//
//  PigLatinization.m
//  Lab13.1
//
//  Created by Mac on 2020-04-06.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "PigLatinization.h"


@implementation NSString (PigLatin)

-(NSString *)strPL:(NSString *)sentence {
    NSMutableArray *wordsInPigLatin = [[NSMutableArray alloc] init];
    NSString *vowelString = @"aeiouy";
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:vowelString];
    
    NSArray *words = [sentence componentsSeparatedByString:@" "];
    
    for (NSString* word in words) {
        // we want to split a word by its first chunk of consonants
        // then suffix the word with "ay" and move consonant chunk to the middle
        NSString *suffix = @"ay";
        NSArray *chunks = [word componentsSeparatedByCharactersInSet:vowels];
        NSString *desiredChunk = [chunks objectAtIndex:0];
        
        NSRange firstOccurence = [word rangeOfString:desiredChunk];
        NSString *prefix = [word stringByReplacingCharactersInRange:firstOccurence withString:@""];
        
        NSString *wordInPigLatin = [@[prefix, desiredChunk, suffix] componentsJoinedByString:@""];
        
        [wordsInPigLatin addObject:wordInPigLatin];
    }
    
    NSString *sentenceInPigLatin = [wordsInPigLatin componentsJoinedByString:@" "];
    return sentenceInPigLatin;
}

@end

