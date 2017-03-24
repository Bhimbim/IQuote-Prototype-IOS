//
//  Travel Helper Function.h
//  IQuote-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/8/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


// INTERFACE

@interface TravelHelperFunction : NSObject


    /* TRANSLATOR */

    - (NSString*) translateDictionaryToJSON : (NSMutableDictionary *) dictionaryJSON;

    - (NSMutableDictionary *) translateJSONToDictionary : (NSString *) stringJSON;

    - (NSMutableDictionary *) translateURLQueryToDictionary : (NSString *) stringURLQuery;


@end
