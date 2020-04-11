//
//  main.m
//  Payment
//
//  Created by Mac on 2020-04-08.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger dRandValue = arc4random_uniform(901)+ 100;
        NSLog(@"Thank you for shopping at Acme.com"       );
        NSLog(@"Your total today is $%ld", dRandValue     );
        NSLog(@"Please select your payment method:"       );
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon, 4: Apple");
        NSLog(@"-> ");
        char str[100];
        fgets (str, 100, stdin);
        
        
        PaymentGateway        *PGW   = [[PaymentGateway        alloc] init];
        PaypalPaymentService_ *PPS   = [[PaypalPaymentService_ alloc] init];
        StripePaymentService  *SPS   = [[StripePaymentService  alloc] init];
        AmazonPaymentService  *APS   = [[AmazonPaymentService  alloc] init];
        ApplePaymentService   *ApPS  = [[ApplePaymentService alloc] init];
        
        
        NSString *input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int optionNum = [input intValue];
        NSLog(@"You choose -> %d", optionNum);
        switch (optionNum)
        {
                
            case 1: PGW.paymentDelegate = PPS ; break;
            case 2: PGW.paymentDelegate = SPS ; break;
            case 3: PGW.paymentDelegate = APS ; break;
            case 4: PGW.paymentDelegate = ApPS; break;
            default: break;
        }
    
        [PGW processPaymentAmount: &dRandValue];
        
        
    }
    return 0;
}
