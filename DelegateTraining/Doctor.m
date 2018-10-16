//
//  Doctor.m
//  DelegateTraining
//
//  Created by Anna Kliuieva on 10/9/18.
//  Copyright © 2018 Anna Kliuieva. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

#pragma mark - PatientDelegate
-(void) patientFeelsBad:(Patient *)patient{
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if(patient.temperature > 38.f && patient.temperature < 40.f){
        [patient takeAPill];
    } else if (patient.temperature >= 40){
        [patient makeShot];
    } else{
        NSLog(@"Patient %@ should have a rest", patient.name);
    }
}
-(void) patient:(Patient *)patient hasQuestion:(NSString *) question{
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
