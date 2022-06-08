//
//  OpenSSLUtilsObjc.m
//  ExampleObjc
//
//  Created by safetrust on 08/06/2022.
//

#import <Foundation/Foundation.h>
#import "OpenSSLUtilsObjc.h"

@interface OpenSSLUtilsObjc ()

@end

@implementation OpenSSLUtilsObjc

+(NSString*) getOpenSSLError {
    return [OpenSSLUtils getOpenSSLError];
}

+(NSString*) pkcs7DataToPEMWithPkcs7Str:(NSString*)pkcs7DerStr {
    return [OpenSSLUtils pkcs7DataToPEMWithPkcs7Str:pkcs7DerStr];
}

+(NSArray*) getX509CertificatesFromPKCS7:(NSString*)pkcs7DerStr {
    return [OpenSSLUtils getX509CertificatesFromPKCS7WithPkcs7DerStr:pkcs7DerStr error:nil];
}

+(X509Wrapper*) verifyTrustAndGetIssuerCertificateWithX509Wrapper:(X509Wrapper*)x509 CAFile:(NSURL*)CAFile {
    return [OpenSSLUtils verifyTrustAndGetIssuerCertificateObjcWithX509:x509 CAFile:CAFile error:nil];
}

+(NSString*) verifyAndReturnSODEncapsulatedDataUsingCMSWithSod:(SOD*)sod {
    return [OpenSSLUtils verifyAndReturnSODEncapsulatedDataUsingCMSObjcWithSod:sod error:nil];
}

+(NSString*) verifyAndReturnSODEncapsulatedDataWithSod:(SOD*)sod {
    return [OpenSSLUtils verifyAndReturnSODEncapsulatedDataObjcWithSod:sod error:nil];
}

+(NSString*) ASN1ParseWithDataStr:(NSString*)dataStr {
    return [OpenSSLUtils ASN1ParseWithDataStr:dataStr error:nil];
}

+(NSArray*) generateAESCMACWithKey:(NSArray*)key message:(NSArray*)message {
    return [OpenSSLUtils generateAESCMACWithKey:key message:message];
}

+(NSArray*) asn1EncodeOIDWithOid:(NSString*)oid {
    return [OpenSSLUtils asn1EncodeOIDWithOid:oid];
}

@end
