//
//  Patient.h
//  DelegateTraining
//
//  Created by Anna Kliuieva on 10/9/18.
//  Copyright © 2018 Anna Kliuieva. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PatientDelegate;
@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) Float32 temperature;
@property (weak, nonatomic) id <PatientDelegate> patientDelegate;

-(BOOL) howAreYou;
-(void) takeAPill;
-(void) makeShot;
-(void) takeNonTraditionalMedicine;
@end

@protocol PatientDelegate <NSObject>
-(void) patientFeelsBad: (Patient*) patient;
-(void) patient:(Patient*) patient hasQuestion:(NSString*) question;
-(void) patient:(Patient*) patient hasHeadache:(BOOL) isHeadHurt;
-(void) patient:(Patient*) patient hasStomacache:(BOOL) isStomacHurt;
@end

