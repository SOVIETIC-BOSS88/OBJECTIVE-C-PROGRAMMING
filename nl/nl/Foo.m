//
//  Foo.m
//  nl
//
//  Created by SUREN HARUTYUNYAN on 18/09/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "Foo.h"

@implementation Foo

{
    Holder * _holder;

}

- (Holder *)holder

{
return _holder;

}

-(void)setHolder:(Holder *)holder

{
    NSLog(@"%s", __PRETTY_FUNCTION__);

    _holder = holder;
    [_holder addFoo:self];

}

@end
