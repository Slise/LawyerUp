//
//  main.m
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-23.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Lawyer.h"
#import "Client.h"
#import "Associate.h"
#import "AssociateDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Practice *divorcePractice = [[Practice alloc] init];
        Lawyer *lawyer1 = [[Lawyer alloc] initWithName:@"lawyerDave" specialties:TypesOfPracticesPatentLaw practice:divorcePractice];
        Lawyer *lawyer2 = [[Lawyer alloc] initWithName:@"lawyerBen" specialties:TypesOfPracticesFamilyLaw practice:divorcePractice];

        Associate *associate1 = [[Associate alloc] init];
        
        Client *client1 = [[Client alloc] initWithName:@"clientJay" descriptionOfProblem:@"want to get divorce" specialtyType:TypesOfPracticesFamilyLaw];
        
        Client *client2 = [[Client alloc] initWithName:@"clientDanny" descriptionOfProblem:@"wants possession of the kids and dog" specialtyType:TypesOfPracticesFamilyLaw];
        
        lawyer1.delegate = associate1;
        
        [lawyer1 addClient:client1];
        
      int clientAmount = [associate1 payableAmountForClient:client1 forLawyer:lawyer1];
        
        NSLog(@"client owes %d", clientAmount);
        
        
    }
    return 0;
}
