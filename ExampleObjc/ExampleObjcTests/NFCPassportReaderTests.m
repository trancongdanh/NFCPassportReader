//
//  NFCPassportReaderTests.m
//  ExampleObjcTests
//
//  Created by safetrust on 08/06/2022.
//

#import <XCTest/XCTest.h>
#import "UtilsObjc.h"

@interface NFCPassportReaderTests : XCTestCase

@end

@implementation NFCPassportReaderTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testBinToHexRep {
    NSArray* val = @[@0x12, @0x24, @0x55, @0x77];
    
    UtilsObjc* utils = [[UtilsObjc alloc] init];
    NSString* result = [utils binToHexRep:val asArray:FALSE];

    XCTAssertEqualObjects(result, @"12245577");
}

- (void)testHexRepToBin {
    NSArray* val = @[@0x12, @0x24, @0x55, @0x77];
    
    UtilsObjc* utils = [[UtilsObjc alloc] init];
    NSArray* result = [utils hexRepToBin:@"12245577"];
    
    XCTAssertEqualObjects(result, val);
}

@end
