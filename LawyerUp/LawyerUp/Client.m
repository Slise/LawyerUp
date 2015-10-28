//
//  Client.m
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-23.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "Client.h"

@implementation Client


-(instancetype)initWithName: (NSString *) name descriptionOfProblem: (NSString *) descriptionOfProblem specialtyType: (TypesOfPractices *) specialtyType {
    self = [super init];
    if (self) {
        _name = name;
        _descriptionOfProblem = descriptionOfProblem;
        _specialtyType = specialtyType;
    }
    return self;
    
}

@end
