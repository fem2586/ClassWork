//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (void)makePizzaWithUserInput:(NSArray *)input {
    
    NSString *sizeAsString = input[0];
    PizzaSize pizzaSize;
    
    if ([sizeAsString isEqualToString:@"small"]) {
        pizzaSize = Small;
    } else if ([sizeAsString isEqualToString:@"medium"]) {
        pizzaSize = Medium;
    } else if ([sizeAsString isEqualToString:@"large"]) {
        pizzaSize = Large;
    }
    
    NSMutableArray *mutableInput = [input mutableCopy];
    [mutableInput removeObjectAtIndex:0];
    NSArray *toppings = [mutableInput copy];
    
    if (self.delegate) {
        
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            pizzaSize = Large;
        }
    }
    
    Pizza *pizza = [[Pizza alloc] initWithSize:pizzaSize
                                      Toppings:toppings];
    
    NSLog(@"Here is your pizza! \nSize: %@ \nToppings: %@", [pizza formatTypeToString:pizzaSize], pizza.toppings);
    
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [self.delegate kitchenDidMakePizza:pizza];
    }
    
    
}

@end
