//
//  BNRPortfolio.m
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 16/09/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"



@interface BNRPortfolio ()

{
    NSMutableArray *_portfolio;
    NSMutableArray *_topThreeHoldings;
    NSMutableArray *_stockSortedABC;

    
}

@end

@implementation BNRPortfolio

-(void) setPortfolio:(NSArray *)stock
{
    _portfolio = [stock mutableCopy];
}

- (NSArray *)portfolio
{
    return [_portfolio copy];
}

-(void) addStockHolding:(BNRStockHolding *)stock
{
    if (!_portfolio){
        _portfolio = [[NSMutableArray alloc]init];
    }
    [_portfolio addObject:stock];}

-(void) removeStockHolding:(BNRStockHolding *)stock
{
  if ( !_portfolio ){
    _portfolio = [[NSMutableArray alloc]init];
 }
 [_portfolio removeObject:stock];}


-(float) valueOfPortfolio
{
    float valueNow = 0;
    float purchaseValue = 0;
    for (BNRStockHolding *s in _portfolio) {
        valueNow += s.valueInDollars;
        purchaseValue += s.costInDollars;
    }
    return valueNow;
}

-(float) costOfPortfolio
{
    float purchaseValue = 0;
    for (BNRStockHolding *s in _portfolio) {
        purchaseValue += s.costInDollars;
    }
    return purchaseValue;
}

- (NSArray *)topThreeHoldings
{
    NSSortDescriptor *sortValue = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    NSMutableArray *sortVID= [[NSMutableArray alloc] init];
    sortVID = _portfolio;
    [sortVID sortUsingDescriptors:@[sortValue]];
    
    //noticed someone use the NSMakeRange to do this instead of calling each individually, I liked it better
    return [sortVID subarrayWithRange:NSMakeRange(0, 3)];
    //return @[sortVID[0], sortVID[1], sortVID[2]];
}

- (NSArray *)stockSortedABC
{
    NSSortDescriptor *sortABC = [NSSortDescriptor sortDescriptorWithKey:@"stockName" ascending:YES];
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    sortedArray = _portfolio;
    [sortedArray sortUsingDescriptors:@[sortABC]];
    
    return sortedArray;
}

- (void) portfolioInfo
{
    for (BNRStockHolding *s in _portfolio)
    {
        NSLog(@"%@  %@ Purchase:$%.2f Current:$%.2f Holding:%d shares Value:$%.2f",s.stockName, s.tickerAbbr, s.purchaseSharePrice, s.currentSharePrice, s.numberOfShares, s.valueInDollars);
    }
    NSLog(@"\nCost of portfolio was $%.2f.\nValue of portfolio is $%.2f\n", [self costOfPortfolio],[self valueOfPortfolio]);
    
    if ([self costOfPortfolio]>[self valueOfPortfolio]) {
        NSLog(@"\nBernie why aren't you answering my calls?");
    }else {
        NSLog(@"\nWarren you are awesome! HAHAH");
    }
    
}




@end
