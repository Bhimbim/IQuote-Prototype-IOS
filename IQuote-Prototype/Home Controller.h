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
    // @property (nonatomic, weak) IBOutlet UITextField *textFieldAgentCode;

    @property (nonatomic, weak) IBOutlet UITextField *textFieldClientCode;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldClientName;
    @property (nonatomic, weak) IBOutlet UITextField *textFieldClientEmail;
    // @property (nonatomic, weak) IBOutlet UITextField *textFieldAgentCode;


    /* OBJECT */

    @property (nonatomic, copy, readwrite) TravelHelperFunction *functionTravelHelper;


@end
