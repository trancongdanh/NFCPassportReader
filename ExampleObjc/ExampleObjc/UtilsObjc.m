//
//  UtilsObjc.m
//  ExampleObjc
//
//  Created by safetrust on 08/06/2022.
//

#import <Foundation/Foundation.h>
#import "UtilsObjc.h"
#import <NFCPassportReader/NFCPassportReader-Swift.h>

@interface UtilsObjc ()

@end

@implementation UtilsObjc

-(NSString*) binToHexRep:(NSArray*)val asArray:(BOOL)asArray {
    Utils* utils = [[Utils alloc] init];
    NSString* result = [utils binToHexRep:val asArray:FALSE];
    
    return result;
}

-(NSArray*) hexRepToBin:(NSString*)val {
    Utils* utils = [[Utils alloc] init];
    NSArray* result = [utils hexRepToBin:val];
    
    return result;
}

@end
