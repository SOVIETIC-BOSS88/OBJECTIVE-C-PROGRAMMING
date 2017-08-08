//
//  BNRAsset.m
//  BMITime
//
//  Created by SUREN HARUTYUNYAN on 21/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description


{
// Is holder non-nil?
    
    if (self.holder)
    
    {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    }
    
    else {
        
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                self.label, self.resaleValue];
                             }

}


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
