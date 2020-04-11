//
//  main.m
//  Lab1
//
//  Created by Mac on 2020-04-03.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLenght, NSString* prompt)
    {
        if (maxLenght <1)       { maxLenght= 255; }
        NSLog(@"%@", prompt);
        char inputChars[maxLenght];
        char * result= fgets(inputChars, maxLenght, stdin);
        if (result != NULL)
            {
                return [[NSString stringWithUTF8String:inputChars ] stringByTrimmingCharactersInSet:
                       [NSCharacterSet whitespaceAndNewlineCharacterSet ]];
            }
        return NULL;
    }

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
            NSString* StrInput = getUserInput(255, @"\nType your string here: (e for exit )") ;
            if ([StrInput isEqualToString:@"e"])
            {   return false;   }
            while (YES) {
                NSString* Option = getUserInput(10, @"\nChose your option:\n1. UpperCase\n2. LowerCase\n3. Numberise\n4. Canadianise\n5. Respond\n6. DE-Space-It\n7. WordsCount\n8. PunctuationRemuval\n9. Done\n  ");
            
            if      ([Option isEqualToString:@"1"]) { NSLog(@"%@",[StrInput uppercaseString]); }
            else if ([Option isEqualToString:@"2"]) { NSLog(@"%@",[StrInput lowercaseString]); }
                
            else if ([Option isEqualToString:@"3"]) { NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
                                                      NSNumber* number= [formatter numberFromString:StrInput];
                                                      if (number != nil)
                                                        {   NSLog(@"%ld", [number integerValue]);   }
                                                      else
                                                        {   NSLog(@"%@", @"Input cannot be Converted in Integer "); }
                                                    }
            else if ([Option isEqualToString:@"4"]) { NSLog(@"%@", [StrInput stringByAppendingString:@", eh?"]); }
            
            else if ([Option isEqualToString:@"5"]) { if ([StrInput characterAtIndex: [StrInput length] - 1 ] == '?')
                                                        { NSLog(@"%@", @" I don't know");   }
                                                        }
                                                      else if ([StrInput characterAtIndex: [StrInput length] - 1] == '!')
                                                        { NSLog(@"%@", @" Calm down! ");        }
            
            else if ([Option isEqualToString:@"6"]) { NSLog(@"%@", [StrInput stringByReplacingOccurrencesOfString: @" " withString:@"-"]); }
            else if ([Option isEqualToString:@"7"]) { NSLog(@"%ld", [StrInput length]);}
            else if ([Option isEqualToString:@"8"]) { NSCharacterSet *punctuationRemoval = [NSCharacterSet characterSetWithCharactersInString:@"!.,';:?"];
                                                      NSLog(@"%@", [[StrInput componentsSeparatedByCharactersInSet: punctuationRemoval] componentsJoinedByString:@" "]);   }
            else if ([Option isEqualToString:@"9"]) { break;}
            }
        }
        }
    return 0;
}

