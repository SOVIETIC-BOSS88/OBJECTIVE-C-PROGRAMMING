//
//  main.m
//  Constants
//
//  Created by SUREN HARUTYUNYAN on 20/09/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSLog(@"\u03c0 is %f", M_PI);
        
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale  *here = [NSLocale currentLocale];
        
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        
        NSLog(@"money is %@", currency);
    }
    
    
    
    return 0;
}

