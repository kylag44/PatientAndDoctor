//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Kyla  on 2018-08-02.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name age:(int)age healthCard:(BOOL)healthCard {
    self = [super init];
    if (self) {
    self.name = name;
    self.age = age;
    self.symptoms = [NSMutableArray arrayWithObjects:@"symptoms1", @"symptoms2", @"symptoms3", @"symptoms4",nil];
    self.prescriptions = [NSMutableArray arrayWithObjects:@"prescriptions1", @"prescriptions2", @"prescriptions3", @"prescriptions4", nil];
    }
//    NSLog(@"My name is %@ and my age is %i", name, age); 
    return self;
}


-(BOOL)visitDoctor:(BOOL)visit {
    if (visit == YES) {
       NSLog(@"Patient is visiting the doctor.");
        return YES;
    } else {
    NSLog(@"Patient is not visiting the doctor.");
    }
    return NO;
}

-(BOOL)requestMedication:(BOOL)symptoms {
    if (symptoms == YES) {
        NSLog(@"You need medication?");
        return YES;
    } else {
         NSLog(@"No medication.");
        return NO;
    }
}

-(NSString *)getMedication:(NSString *)symptoms {
    if ([symptoms isEqual:@"symptoms1"]) {
        return self.prescriptions[0];
    } else if ([symptoms isEqual:@"symptoms2"]) {
        return self.prescriptions[1];
    } else if ([symptoms isEqual:@"symptoms3"]) {
        return self.prescriptions[2];
    } else if ([symptoms isEqual:@"symptoms4"]) {
        return self.prescriptions[3];
    } else {
        return @"Do not need prescription";
    }
}




@end
