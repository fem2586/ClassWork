//
//  PaymentGateway.m
//  Payment
//
//  Created by Mac on 2020-04-08.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger *)amount
    {
        if([self.paymentDelegate canProcessPayment])
            { [self.paymentDelegate processPaymentAmount:amount]; }
        else
            { NSLog(@"Your payment was declined ");               }
    }

@end
