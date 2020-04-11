//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Mac on 2020-04-06.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    Small,
    Medium,
    Large,
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

-(instancetype)initWithSize:(PizzaSize)size
                   Toppings:(NSArray *)toppings;

- (NSString*)formatTypeToString:(PizzaSize)pizzaSize; 

@end
