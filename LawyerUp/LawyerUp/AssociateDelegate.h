//
//  Associate.h
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-25.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Lawyer.h"

@protocol AssociateDelegate <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer*)lawyer;
-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer*)lawyer;

@end
