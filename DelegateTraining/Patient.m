//
//  Patient.m
//  DelegateTraining
//
//  Created by Anna Kliuieva on 10/9/18.
//  Copyright © 2018 Anna Kliuieva. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(BOOL) howAreYou{
    BOOL iFeelGood = arc4random() % 2;
    
    if(!iFeelGood){
        [self.patientDelegate patientFeelsBad:self];
    }
    return iFeelGood;
}
-(void) takeAPill{
    NSLog(@"%@ takes a pill", self.name);
}
-(void) makeShot{
    NSLog(@"%@ takes a shot", self.name);
}
-(void) takeNonTraditionalMedicine{
    NSLog(@"%@ takes non traditional medicine", self.name);
}
@end
