//
//  Holder.m
//  nl
//
//  Created by SUREN HARUTYUNYAN on 18/09/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "Holder.h"

@implementation Holder


{
    NSMutableArray * _store;

}


- (void) addFoo:(Foo *)foo

{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_store) {
        _store = [NSMutableArray array];
        
    }
    
    [_store addObject:foo];
    [foo.holder= self];
}



@end
