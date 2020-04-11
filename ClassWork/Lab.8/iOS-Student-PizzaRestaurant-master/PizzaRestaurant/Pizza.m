//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mac on 2020-04-06.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithSize:(PizzaSize)size
                   Toppings:(NSArray *)toppings {
    self = [super init];
        if (self) {
            self.size = size;
            self.toppings = toppings;
    } return self;
}


- (NSString*)formatTypeToString:(PizzaSize)pizzaSize {
    NSString *result = nil;
    
    switch(pizzaSize) {
        case Small:
            result = @"Small size";
            break;
        case Medium:
            result = @"Medium size";
            break;
        case Large:
            result = @"Large size";
            break;
        default:
            [NSException raise:NSGenericException format:@"Try again"];
    }
    
    return result;
}

@end
