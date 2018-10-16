//
//  Friend.m
//  DelegateTraining
//
//  Created by Anna Kliuieva on 10/15/18.
//  Copyright © 2018 Anna Kliuieva. All rights reserved.
//

#import "Friend.h"

@implementation Friend

- (void)patient:(Patient *)patient hasQuestion:(NSString *)question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

- (void)patientFeelsBad:(Patient *)patient {
    NSLog(@"Patient %@ feels bad", patient.name);
    [patient takeNonTraditionalMedicine];
    NSLog(@"Patient %@ takes non traditional medicine", patient.name);
}

@end
