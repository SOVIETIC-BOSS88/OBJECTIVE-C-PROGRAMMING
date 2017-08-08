//
//  BNRStockHolding.m
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 11/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "BNRStockHolding.h"
#import "BNRPortfolio.h"

@implementation BNRStockHolding
@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;


- (float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}

- (BNRStockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares
{
    [self setPurchaseSharePrice:purchasedPrice];
    [self setCurrentSharePrice:currentPrice];
    [self setNumberOfShares:numberShares];
    
    return self;
}

@end
