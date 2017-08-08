//
//  BNREmployee.h
//  BMITime
//
//  Created by SUREN HARUTYUNYAN on 12/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson


@property (nonatomic) unsigned int employeeID;

@property (nonatomic) NSDate *hireDate;

@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;

- (void)addAsset:(BNRAsset *)a;

- (unsigned int)valueOfAssets;

@end
