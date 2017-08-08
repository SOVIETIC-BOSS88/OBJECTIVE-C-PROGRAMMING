//
//  BNRAsset.h
//  BMITime
//
//  Created by SUREN HARUTYUNYAN on 21/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;


@interface BNRAsset : NSObject



@property (nonatomic, copy) NSString *label;

@property (nonatomic, weak) BNREmployee *holder;

@property (nonatomic) unsigned int resaleValue;

@end
