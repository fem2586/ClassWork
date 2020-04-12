//
//  Box.m
//  Lab.2
//
//  Created by Mac on 2020-04-10.
//  Copyright © 2020 classWork. All rights reserved.
//

#import "Box.h"

@implementation Box

    -(instancetype)initWithWidth:(float)width andLength:(float)length andHeight:(float)height
        {
            self = [super init];
            if (self)
                {
                    _width   = width    ;
                    _length  = length   ;
                    _height  = height   ;
                }
            return self;
        }

    

    -(float)calVol                   { return self.height * self.length * self.length;  }
    -(int)calcFitInAnB:(Box *) oBox  { return [oBox calVol] / [self calVol];            }

@end
