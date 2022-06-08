//
//  UtilsObjc.h
//  ExampleObjc
//
//  Created by safetrust on 08/06/2022.
//

#ifndef UtilsObjc_h
#define UtilsObjc_h

@interface UtilsObjc : NSObject

-(NSString*) binToHexRep:(NSArray*)val asArray:(BOOL)asArray;
-(NSArray*) hexRepToBin:(NSString*)val;

@end

#endif /* UtilsObjc_h */
