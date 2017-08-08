//
//  BNRPerson.h
//  BMITime
//
//  Created by SUREN HARUTYUNYAN on 11/08/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject


// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;



// BNRPerson has a method that calculates the Body Mass Index
-(float)bodyMassIndex;




@end
