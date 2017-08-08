//
//  BNRPortfolio.h
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 16/09/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *portfolio;


-(void) addStockHolding:(BNRStockHolding *)stock;
-(void) removeStockHolding:(BNRStockHolding *)stock;


-(float) valueOfPortfolio;
-(float) costOfPortfolio;
-(void) portfolioInfo;

- (NSArray *) topThreeHoldings;
- (NSArray *) stockSortedABC;





@end