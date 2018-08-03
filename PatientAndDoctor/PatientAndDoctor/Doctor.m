//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Kyla  on 2018-08-02.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "Doctor.h"

@implementation Doctor


-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization {
    self.name = name;
    self.specialization = specialization;
    self.prescriptionHistory = [[NSMutableDictionary alloc] init];
    return self;
}

-(BOOL)checkHealthCard:(BOOL)healthCard {
    if (healthCard == YES) {
        NSLog(@"You are accepted.");
        //add the patient list to the array if patient is accepted
        [self.patientList addObject:self.name];
        return YES;
    } else {
        NSLog(@"You are not accepted.");
        }
    return NO;
}

-(void)addPrescriptionToHistory:(NSString *)patientName patientPrescription:(NSString *)patientPrescription {
    [_prescriptionHistory setObject:patientPrescription forKey:patientName];
}

-(NSString *)getPrescriptionHistory:(NSString *)patientName {
    NSString *getPrescription = [self.prescriptionHistory valueForKey:patientName];
    
    return getPrescription;
}

@end
