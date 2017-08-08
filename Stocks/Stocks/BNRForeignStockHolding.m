//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 16/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float convertedCosts = [super costInDollars] * conversionRate;
    return convertedCosts;
}

-(float)valueInDollars
{
    float convertedValue = [super valueInDollars] * conversionRate;
    return convertedValue;
}

// Additional parameter convertRate
- (BNRStockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares :(float)convertRate
{
    [self setPurchaseSharePrice:purchasedPrice];
    [self setCurrentSharePrice:currentPrice];
    [self setNumberOfShares:numberShares];
    [self setConversionRate:convertRate];
    
    return self;
}


@end
