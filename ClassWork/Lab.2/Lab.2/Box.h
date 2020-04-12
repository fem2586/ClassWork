//
//  Box.h
//  Lab.2
//
//  Created by Mac on 2020-04-10.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
 
    @property float length;
    @property float width;
    @property float height;


    -(instancetype)initWithWidth: (float) width andLength: (float) length andHeight: (float) height;
    -(float)calVol;
    -(int)calcFitInAnB:(Box *) OtherBox;


@end

NS_ASSUME_NONNULL_END
