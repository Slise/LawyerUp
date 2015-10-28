//
//  Lawyer.m
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-23.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "Lawyer.h"

@interface Lawyer ()



@end

@implementation Lawyer



-(instancetype)initWithName: (NSString *)name specialties:(TypesOfPractices)specialties practice:(Practice*)practice{
    self = [super init];
    if (self) {
        _name = name;
        _specialties = specialties;
        _lawyerRates = [practice.rates objectForKey:[practice practiceString:specialties]];
        _clientList = [[NSMutableArray alloc] init];
        
        
    }
    return self;
}
    
-(void)addClient:(Client*)client {
    if (self.clientList) {
        [self.delegate addClientToClientList:client forLawyer:self];
        
    }
    
}


-(int)getPayableAmountForClient:(Client*)client {
     return  [self.delegate payableAmountForClient:client forLawyer:self];
    
}

@end
