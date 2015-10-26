//
//  Practice.m
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-23.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rates = @{[self practiceString:TypesOfPracticesFamilyLaw]: @200.00, [self practiceString:TypesOfPracticesPatentLaw]: @380.50, [self practiceString:TypesOfPracticesCriminalLaw ]: @405.99, [self practiceString:TypesOfPracticesCorporateLaw]: @400};
    }
    return self;
}

//converts TypeOfPractices which is enum to a string

- (NSString *) practiceString: (TypesOfPractices) practiceEnum {
    if (practiceEnum == TypesOfPracticesFamilyLaw) {
        return @"Family Law";
        
    }
    else if (practiceEnum == 1) {
        return @"Patent Law";
    }
    else if (practiceEnum==2) {
        return @"Criminal Law";
    }
    else {
        return @"Corporate Law";
    }
    
}


@end
