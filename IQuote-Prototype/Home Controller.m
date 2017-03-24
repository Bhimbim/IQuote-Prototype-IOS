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
            [_dictionaryClientProfile setValue:@"1" forKey:JSON_KEY_CLIENTCODE];
            [_dictionaryClientProfile setValue:@"Faiz Baraja" forKey:JSON_KEY_CLIENTNAME];
            [_dictionaryClientProfile setValue:@"faiz.baraja@infoconnect.com.my" forKey:JSON_KEY_CLIENTEMAIL];
            [_dictionaryClientProfile setValue:@"true" forKey:JSON_KEY_CLIENTSTATUS];
            
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
        
        [_dictionaryClientProfile setValue:_textFieldClientCode.text forKey:JSON_KEY_CLIENTCODE];
        [_dictionaryClientProfile setValue:_textFieldClientName.text forKey:JSON_KEY_CLIENTNAME];
        [_dictionaryClientProfile setValue:_textFieldClientEmail.text forKey:JSON_KEY_CLIENTEMAIL];
        [_dictionaryClientProfile setValue:@"true" forKey:JSON_KEY_CLIENTSTATUS];
        
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
