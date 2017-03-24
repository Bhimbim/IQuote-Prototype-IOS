//
//  ViewController.m
//  IQuote-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/8/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import "Home Controller.h"



// INTERFACE

@interface HomeController ()

@end


// IMPLEMENTATION

@implementation HomeController


    /* VIEW DID LOAD */

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // INITIALIZATION
        
            /* FUNCTION */
            
            _functionTravelHelper = [[TravelHelperFunction alloc] init];
        
        
        // JSON COMPOSER
        
            /* LOGIN SESSION */
        
            _booleanLoginSession = true;
        
            /* AGENT PROFILE */
            
            _dictionaryAgentProfile = [[NSMutableDictionary alloc]init];
            [_dictionaryAgentProfile setValue:@"SE0001" forKey:JSON_KEY_AGENTCODE];
            [_dictionaryAgentProfile setValue:@"Yosi Oliver" forKey:JSON_KEY_AGENTNAME];
            [_dictionaryAgentProfile setValue:@"yosi.oliver@infoconnect.com.my" forKey:JSON_KEY_AGENTEMAIL];
            [_dictionaryAgentProfile setValue:@"true" forKey:JSON_KEY_AGENTSTATUS];
        
            _stringJSONAgentProfile = [_functionTravelHelper translateDictionaryToJSON:_dictionaryAgentProfile];
            _dataAgentProfile = [_stringJSONAgentProfile dataUsingEncoding:NSUTF8StringEncoding];
        
            /* SALES ILLUSTRATION */
        
            _dictionaryClientProfile = [[NSMutableDictionary alloc]init];
//            [_dictionaryClientProfile setValue:@"1" forKey:JSON_KEY_CLIENTCODE];
//            [_dictionaryClientProfile setValue:@"Faiz Baraja" forKey:JSON_KEY_CLIENTNAME];
//            [_dictionaryClientProfile setValue:@"faiz.baraja@infoconnect.com.my" forKey:JSON_KEY_CLIENTEMAIL];
//            [_dictionaryClientProfile setValue:@"true" forKey:JSON_KEY_CLIENTSTATUS];
        
            _stringJSONClientProfile = [_functionTravelHelper translateDictionaryToJSON:_dictionaryClientProfile];
            _dataClientProfile = [_stringJSONClientProfile dataUsingEncoding:NSUTF8StringEncoding];
    }


    /* DID RECEIVE MEMORY WARNING */

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }


    /* IBACTION */

    - (IBAction) goToIApply : (id) sender
    {
        /* FORM */
        
        [_dictionaryAgentProfile setValue:_textFieldAgentCode.text forKey:JSON_KEY_AGENTCODE];
        [_dictionaryAgentProfile setValue:_textFieldAgentName.text forKey:JSON_KEY_AGENTNAME];
        [_dictionaryAgentProfile setValue:_textFieldAgentEmail.text forKey:JSON_KEY_AGENTEMAIL];
        [_dictionaryAgentProfile setValue:@"true" forKey:JSON_KEY_AGENTSTATUS];
        
        _stringJSONAgentProfile = [_functionTravelHelper translateDictionaryToJSON:_dictionaryAgentProfile];
        _dataAgentProfile = [_stringJSONAgentProfile dataUsingEncoding:NSUTF8StringEncoding];
        
        [_dictionaryClientProfile setValue:_textFieldSalesIllustrationNo.text forKey:JSON_KEY_SINO];
        [_dictionaryClientProfile setValue:_textFieldProductName.text forKey:JSON_KEY_PRODUCTNAME];
        [_dictionaryClientProfile setValue:_textFieldProductCode.text forKey:JSON_KEY_PRODUCTCODE];
        [_dictionaryClientProfile setValue:_textFieldApplicantName.text forKey:JSON_KEY_APPLICANT_NAME];
        [_dictionaryClientProfile setValue:_textFieldApplicantDOB.text forKey:JSON_KEY_APPLICANT_DOB];
        [_dictionaryClientProfile setValue:_textFieldApplicantGender.text forKey:JSON_KEY_APPLICANT_GENDER];
        [_dictionaryClientProfile setValue:_textFieldApplicantSmoker.text forKey:JSON_KEY_APPLICANT_SMOKER];
        [_dictionaryClientProfile setValue:_textFieldApplicantOccupation.text forKey:JSON_KEY_APPLICANT_OCCUPATION];
        [_dictionaryClientProfile setValue:_textFieldApplicantNationality.text forKey:JSON_KEY_APPLICANT_NATIONALITY];
        [_dictionaryClientProfile setValue:_textFieldApplicantAnnualIncome.text forKey:JSON_KEY_APPLICANT_INCOME];
        [_dictionaryClientProfile setValue:_textFieldApplicantIndustry.text forKey:JSON_KEY_APPLICANT_INDUSTRY];
        [_dictionaryClientProfile setValue:_textFieldLASamePerson.text forKey:JSON_KEY_LA_SAMEPERSON];
        [_dictionaryClientProfile setValue:_textFieldLAName.text forKey:JSON_KEY_LA_NAME];
        [_dictionaryClientProfile setValue:_textFieldLADOB.text forKey:JSON_KEY_LA_DOB];
        [_dictionaryClientProfile setValue:_textFieldLAGender.text forKey:JSON_KEY_LA_GENDER];
        [_dictionaryClientProfile setValue:_textFieldLAOccupation.text forKey:JSON_KEY_LA_OCCUPATION];
        [_dictionaryClientProfile setValue:_textFieldLANationality.text forKey:JSON_KEY_LA_NATIONALITY];
        [_dictionaryClientProfile setValue:_textFieldLAAnnualIncome.text forKey:JSON_KEY_LA_ANNUAL_INCOME];
        [_dictionaryClientProfile setValue:_textFieldLAIndustry.text forKey:JSON_KEY_LA_INDUSTRY];
        [_dictionaryClientProfile setValue:_textFieldEmail.text forKey:JSON_KEY_EMAIL];
        [_dictionaryClientProfile setValue:_textFieldPYName.text forKey:JSON_KEY_PY_NAME];
        [_dictionaryClientProfile setValue:_textFieldPYDOB.text forKey:JSON_KEY_PY_DOB];
        [_dictionaryClientProfile setValue:_textFieldPYGender.text forKey:JSON_KEY_PY_GENDER];
        [_dictionaryClientProfile setValue:_textFieldPYOccupation.text forKey:JSON_KEY_PY_OCCUPATION];
        [_dictionaryClientProfile setValue:_textFieldPYNationality.text forKey:JSON_KEY_PY_NATIONALITY];
        [_dictionaryClientProfile setValue:_textFieldPYAnnualIncome.text forKey:JSON_KEY_PY_ANNUAL_INCOME];
        [_dictionaryClientProfile setValue:_textFieldPYIndustry.text forKey:JSON_KEY_PY_INDUSTRY];
        [_dictionaryClientProfile setValue:_textFieldPaymentMode.text forKey:JSON_KEY_PAYMENT_MODE];
        [_dictionaryClientProfile setValue:_textFieldModalPrem.text forKey:JSON_KEY_MODAL_PREM];
        [_dictionaryClientProfile setValue:_textFieldGSTAmt.text forKey:JSON_KEY_GST_AMOUNT];
        [_dictionaryClientProfile setValue:_textFieldMonthlyRecTpUp.text forKey:JSON_KEY_MONTHLY_REC_TP_UP];
        [_dictionaryClientProfile setValue:_textFieldInsAmt.text forKey:JSON_KEY_INS_AMOUNT];
        [_dictionaryClientProfile setValue:_textFieldTotalPayable.text forKey:JSON_KEY_TOTAL_PAYABLE];
        [_dictionaryClientProfile setValue:_textFieldFundCode.text forKey:JSON_KEY_FUND_CODE];
        [_dictionaryClientProfile setValue:_textFieldFundName.text forKey:JSON_KEY_FUND_NAME];
        [_dictionaryClientProfile setValue:_textFieldAllocation.text forKey:JSON_KEY_ALLOCATION];
        [_dictionaryClientProfile setValue:_textFieldRiderCode.text forKey:JSON_KEY_RIDER_CODE];
        [_dictionaryClientProfile setValue:_textFieldRiderName.text forKey:JSON_KEY_RIDER_NAME];
        [_dictionaryClientProfile setValue:_textFieldSumAssured.text forKey:JSON_KEY_SUM_ASSURED];
        [_dictionaryClientProfile setValue:_textFieldTerm.text forKey:JSON_KEY_TERM];
        [_dictionaryClientProfile setValue:_textFieldPremium.text forKey:JSON_KEY_PREMIUM];
        [_dictionaryClientProfile setValue:_textFieldGST.text forKey:JSON_KEY_GST];
        [_dictionaryClientProfile setValue:_textFieldInsCharge.text forKey:JSON_KEY_INS_CHARGE];
        [_dictionaryClientProfile setValue:_textFieldNetPayable.text forKey:JSON_KEY_NET_PAYABLE];
        
        _stringJSONClientProfile = [_functionTravelHelper translateDictionaryToJSON:_dictionaryClientProfile];
        _dataClientProfile = [_stringJSONClientProfile dataUsingEncoding:NSUTF8StringEncoding];
        
        
        /* TRAVEL */
        
        /* NSString *stringURLPrimary = [NSString stringWithFormat:@"IApply-Prototype://?booleanLoginSession=%d&stringJSONAgentProfile='%@'&stringJSONClientProfile='%@'", _booleanLoginSession, _dataAgentProfile, _dataClientProfile];
        NSLog(@"Home Controller | goToIApply, stringURLPrimary: %@", stringURLPrimary); */
        NSString *stringURLPrimary = [NSString stringWithFormat:@"%@://?", TRAVEL_VALUE_SCHEME];
        NSString *stringURLSecondary = @"itms://itunes.apple.com/my/app/zurich-iquote/id1159300923?mt=8"; // @"maps://";
        NSString *stringURLExecute;
        NSString *stringURLQuery;
        
        NSURLComponents *URLComponents = [[NSURLComponents alloc] init];
        URLComponents.scheme = TRAVEL_VALUE_SCHEME;
        NSURLQueryItem *queryItemLoginSession = [NSURLQueryItem queryItemWithName:JSON_KEY_LOGINSESSION value:@"true"];
        NSURLQueryItem *queryItemJSONAgentProfile = [NSURLQueryItem queryItemWithName:JSON_KEY_AGENTPROFILE value:_stringJSONAgentProfile];
        NSURLQueryItem *queryItemJSONClientProfile = [NSURLQueryItem queryItemWithName:JSON_KEY_CLIENTPROFILE value:_stringJSONClientProfile];
        URLComponents.queryItems = @[ queryItemLoginSession, queryItemJSONAgentProfile, queryItemJSONClientProfile ];
        stringURLQuery = [[NSString stringWithFormat:@"%@", URLComponents.URL] substringFromIndex:18];
        
        NSLog(@"Home Controller | goToIApply, URL Components url -> %@", URLComponents.URL);
        NSLog(@"Home Controller | goToIApply, URL Components queryItems -> %@", URLComponents.queryItems);
        NSLog(@"Home Controller | goToIApply, URL Components query -> %@", URLComponents.query);
        NSLog(@"Home Controller | goToIApply, stringURLQuery -> %@", stringURLQuery);
        stringURLPrimary = [NSString stringWithFormat:@"%@%@", stringURLPrimary, stringURLQuery];
        
        BOOL booleanURLPrimary = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:stringURLPrimary]];
        
        if (booleanURLPrimary == true)
        {
            stringURLExecute = stringURLPrimary;
        }
        else
        {
            stringURLExecute = stringURLSecondary;
        }
        
        NSLog(@"Home Controller | goToIApply, stringURLExecute: %@", stringURLExecute);
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:stringURLExecute]];
    }

@end
