//
//  main.m
//  Lab.2
//
//  Created by Mac on 2020-04-10.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    
        {
            Box *box2 = [[ Box alloc] initWithWidth:4.0 andLength:4.0 andHeight:5.0];
            NSLog(@"Box volume: %f", [box2 calVol]);
            
            Box *box = [[ Box alloc] initWithWidth:8.0 andLength:8.0 andHeight:10.0];
            NSLog(@"Box volume: %f", [box calVol]);
            NSLog(@"Box 2 fit in Box 1: %d", [box2 calcFitInAnB:box]);
         
        }
    return 0;
}
