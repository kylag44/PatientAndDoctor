//
//  main.m
//  PatientAndDoctor
//
//  Created by Kyla  on 2018-08-02.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Doctor *doctor = [[Doctor alloc] initWithName:@"Joe" specialization:@"Butts"];
        Patient *patient = [[Patient alloc] initWithName:@"Bob" age:21 healthCard:YES];
        [patient visitDoctor:YES];
        [patient requestMedication:YES];
        BOOL symptoms1 = YES;
        BOOL request1 = [patient requestMedication:symptoms1];
        
        if (request1) {
            NSString *prescriptions1 = [patient getMedication:@"symptoms1"];
            NSLog(@"medication: %@", prescriptions1);
            
            
            [doctor addPrescriptionToHistory:patient.name patientPrescription:prescriptions1];
        
//        [patient visitDoctor:YES];
//        [patient visitDoctor:NO];
//        [doctor checkHealthCard:YES];
//        [doctor checkHealthCard:NO];
//        [patient requestMedication:YES];
//        [patient requestMedication:NO];
//
//        NSLog(@"You are prescribed %@", [patient getMedication:@"symptoms1"]);
//         NSLog(@"You are prescribed %@", [patient getMedication:@"symptoms2"]);
//        NSLog(@"Hello my name is %@, and my specialization is %@.", doctor.name, doctor.specialization);
//        NSLog(@"Hello I'm %@, and I'm %i years old.", patient.name, patient.age);
//
//        [doctor addPrescriptionToHistory:@"prescriptions1" patientPrescription:@"prescriptions2"];
//        [doctor getPrescriptionHistory:@"prescriptions3"];
        
        Patient *patient2 = [[Patient alloc] initWithName:@"Jerry" age:32 healthCard:YES];
        [patient2 visitDoctor:YES];
        [patient2 requestMedication:YES];
        BOOL symptoms2 = YES;
        BOOL request2 = [patient2 requestMedication:symptoms2];
        
        if (request2) {
            NSString *prescriptions2 = [patient getMedication:@"symptoms2"];
            NSLog(@"medication: %@", prescriptions2);
            
            
            [doctor addPrescriptionToHistory:patient2.name patientPrescription:prescriptions2];
            
            NSLog(@"%@", [doctor getPrescriptionHistory:@"Bob"]);
        }
      
    }
    }
    return 0;
}
