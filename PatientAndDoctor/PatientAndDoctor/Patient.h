//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Kyla  on 2018-08-02.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "Person.h"


@class Doctor;

@interface Patient : Person

@property (nonatomic, assign) int age;
@property (nonatomic) NSMutableArray *symptoms; 
@property (nonatomic) NSMutableArray *prescriptions;

- (instancetype)initWithName:(NSString *)name age:(int)age healthCard:(BOOL)healthCard;

- (BOOL)visitDoctor:(BOOL)visit;

- (BOOL)requestMedication:(BOOL)symptoms;

-(NSString *)getMedication:(NSString *)symptoms;

@end
