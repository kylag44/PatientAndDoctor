//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Kyla  on 2018-08-02.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "Person.h"

@interface Doctor : Person

@property (nonatomic, strong) NSString *specialization;
@property (nonatomic) NSMutableArray *patientList;
@property (nonatomic) NSMutableDictionary *prescriptionHistory;

-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization; 

-(BOOL)checkHealthCard:(BOOL)healthCard; 

//-(NSArray *)giveMedication:(NSString *)symptoms;

-(void)addPrescriptionToHistory:(NSString *)patientName patientPrescription:(NSString *)addPrescription;

-(NSString *)getPrescriptionHistory:(NSString *)patientName;

@end
