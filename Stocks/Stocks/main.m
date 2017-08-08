//
//  main.m
//  Stocks
//
//  Created by SUREN HARUTYUNYAN on 11/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"
#import "BNRStockHolding.h"



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        //Create an instance of BNRPortfolio
        BNRPortfolio *aPortfolio =[[BNRPortfolio alloc]init] ;
        
        
        //Fill the new portfolio with stock holdings
        //Create a pool of stock names
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (int i=0; i<2000; i++) {
            //Creat instance of single stock holding
            BNRStockHolding *stock = [[BNRStockHolding alloc]init];
            
            //Generate randomish values for stock holdings
            stock.purchaseSharePrice = (arc4random()%10000)/100;
            
            stock.currentSharePrice = stock.purchaseSharePrice*(0.5+(arc4random()%100)/100.00);
            
            stock.numberOfShares = arc4random()%500;
            
            stock.stockName =[[NSString stringWithFormat:@"%@", words[arc4random()%[words count]]]capitalizedString];
            
            if ([stock.stockName length]<4) {
                
                stock.tickerAbbr = [stock.stockName uppercaseString];
            } else  {
                
                stock.tickerAbbr =[[stock.stockName substringToIndex:3] uppercaseString];
            }
            //add stock holding to the new portfolio
            [aPortfolio addStockHolding:stock];
        }
        
        //Print the contents of the portfolio and its current value
        
        [aPortfolio portfolioInfo];
        
    
    }
    
    // Print the holdings in alphabetical order
    NSLog(@"Holdings sorted by symbol: %@", [BNRPortfolio stockSortedABC]);
    
    // print the top 3 valued holdings
    NSLog(@"Top 3 most valuable holdings: %@", [_portfolio topThreeHoldings]);
    
    // cleanup holdings
    portfolio = nil;
    
    
    return 0;
}

