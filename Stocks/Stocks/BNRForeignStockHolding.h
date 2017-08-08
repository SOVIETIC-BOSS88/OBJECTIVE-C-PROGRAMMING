//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 16/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"


@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;


- (BNRStockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares :(float)conversionRate;



@end
