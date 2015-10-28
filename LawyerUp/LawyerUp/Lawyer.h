//
//  Lawyer.h
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-23.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Client.h"
#import "AssociateDelegate.h"

@interface Lawyer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) TypesOfPractices specialties;
@property (nonatomic, strong) NSNumber *lawyerRates;
@property (nonatomic, strong) NSMutableArray *clientList;
@property (nonatomic, weak) id<AssociateDelegate> delegate;


-(instancetype)initWithName: (NSString *)name specialties:(TypesOfPractices)specialties practice:(Practice*)practice;
-(void)addClient:(Client*)client;
-(int)getPayableAmountForClient:(Client*)client;

@end
