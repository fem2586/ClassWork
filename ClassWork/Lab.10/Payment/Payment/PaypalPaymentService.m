//
//  PaypalPaymentService,.m
//  Payment
//
//  Created by Mac on 2020-04-08.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService_

-(void)processPaymentAmount:(NSInteger* )amount
{ NSLog(@"Paypal processed amount $%ld", amount); }

-(BOOL)canProcessPayment
{ return arc4random_uniform(2) != 0; }

@end
