//
//  BNRPerson.m
//  BMITime
//
//  Created by SUREN HARUTYUNYAN on 11/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "BNRPerson.h"

// A class extension

@implementation BNRPerson


- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);

}

@end
