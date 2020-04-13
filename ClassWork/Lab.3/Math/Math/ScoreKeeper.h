//
//  ScoreKeeper.h
//  Math
//
//  Created by Mac on 2020-04-13.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic,assign) NSInteger right, wrong, perc;

-(NSString*)Score;

@end

NS_ASSUME_NONNULL_END
