//
//  ViewController.h
//  IQuote-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/8/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Travel Helper Function.h"
#import "String Constant.h"


// INTERFACE

@interface HomeController : UIViewController


    /* VARIABLE */

    @property(nonatomic, copy, readwrite) NSString *stringJSONAgentProfile;
    @property(nonatomic, copy, readwrite) NSString *stringJSONClientProfile;
    @property(nonatomic, assign, readwrite) BOOL booleanLoginSession;

    @property(nonatomic, copy, readwrite) NSMutableDictionary *dictionaryAgentProfile;
    @property(nonatomic, copy, readwrite) NSMutableDictionary *dictionaryClientProfile;

    @property(nonatomic, copy, readwrite) NSData *dataAgentProfile;
    @property(nonatomic, copy, readwrite) NSData *dataClientProfile;


    /* TEXTFIELD */

    @property (nonatomic, weak) IBOutlet UITextField *textFieldAgentCode;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldAgentName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldAgentEmail;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldSalesIllustrationNo;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldProductName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldProductCode;

    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantDOB;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantGender;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantSmoker;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantOccupation;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantNationality;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantAnnualIncome;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldApplicantIndustry;

    @property (nonatomic, weak) IBOutlet UITextField *textFieldLASamePerson;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLAName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLADOB;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLAGender;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLAOccupation;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLANationality;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLAAnnualIncome;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldLAIndustry;

    @property (nonatomic, weak) IBOutlet UITextField *textFieldEmail;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYDOB;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYGender;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYOccupation;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYNationality;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYAnnualIncome;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPYIndustry;

    @property (nonatomic, weak) IBOutlet UITextField *textFieldPaymentMode;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldModalPrem;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldGSTAmt;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldMonthlyRecTpUp;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldInsAmt;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldTotalPayable;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldFundCode;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldFundName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldAllocation;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldRiderCode;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldRiderName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldSumAssured;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldTerm;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldPremium;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldGST;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldInsCharge;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldNetPayable;


    /* OBJECT */

    @property (nonatomic, copy, readwrite) TravelHelperFunction *functionTravelHelper;


@end
