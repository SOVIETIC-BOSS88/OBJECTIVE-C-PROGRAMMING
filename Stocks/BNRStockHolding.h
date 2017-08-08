//
//  BNRStockHolding.h
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 11/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;

@property (nonatomic) float currentSharePrice;

@property (nonatomic) int numberOfShares;

@property (nonatomic, copy) NSString *stockName;

@property (nonatomic, copy) NSString *tickerAbbr;

- (float) costInDollars;

- (float) valueInDollars;



@end
