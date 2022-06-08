//
//  OpenSSLUtilsObjc.h
//  ExampleObjc
//
//  Created by safetrust on 08/06/2022.
//

#ifndef OpenSSLUtilsObjc_h
#define OpenSSLUtilsObjc_h

#import <NFCPassportReader/NFCPassportReader-Swift.h>

@interface OpenSSLUtilsObjc : NSObject

+(NSString*) getOpenSSLError;
+(NSString*) pkcs7DataToPEMWithPkcs7Str:(NSString*)pkcs7DerStr;
+(NSArray*) getX509CertificatesFromPKCS7:(NSString*)pkcs7DerStr;
+(X509Wrapper*) verifyTrustAndGetIssuerCertificateWithX509Wrapper:(X509Wrapper*)x509 CAFile:(NSURL*)CAFile;
+(NSString*) verifyAndReturnSODEncapsulatedDataUsingCMSWithSod:(SOD*)sod;
+(NSString*) verifyAndReturnSODEncapsulatedDataWithSod:(SOD*)sod;
+(NSString*) ASN1ParseWithDataStr:(NSString*)dataStr;
+(NSArray*) generateAESCMACWithKey:(NSArray*)key message:(NSArray*)message;
+(NSArray*) asn1EncodeOIDWithOid:(NSString*)oid;

@end

#endif /* OpenSSLUtilsObjc_h */
