//
//  Doctor.h
//  DelegateTraining
//
//  Created by Anna Kliuieva on 10/9/18.
//  Copyright © 2018 Anna Kliuieva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject <PatientDelegate>
-(void) patientFeelsBad:(Patient *)patient;
-(void) patient:(Patient *)patient hasQuestion:(NSString *) question;
@end
