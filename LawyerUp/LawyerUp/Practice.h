//
//  Practice.h
//  LawyerUp
//
//  Created by Benson Huynh on 2015-10-23.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum: NSUInteger {
    TypesOfPracticesFamilyLaw,
    TypesOfPracticesPatentLaw,
    TypesOfPracticesCriminalLaw,
    TypesOfPracticesCorporateLaw
} TypesOfPractices;




@interface Practice : NSObject

@property (nonatomic, strong) NSDictionary *rates;
@property (nonatomic, strong) NSArray *lawyer;

- (NSString *) practiceString: (TypesOfPractices) practiceEnum;

@end


