//
//  NumberFormatterTests.m
//  NumberFormatter
//
//  Created by Jonathan Younger on 9/25/14.
//  Copyright (c) 2014 Jonathan Younger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

static double const kMilesToMetersCoefficient = 1609.344;
static double const kMetersToMilesCoefficient = 0.000621371192;

@interface NumberFormatterTests : XCTestCase
@property (strong, nonatomic) NSNumberFormatter *formatter;
@property (strong, nonatomic) NSNumber *number;
@end

@implementation NumberFormatterTests

- (void)setUp {
    [super setUp];
    
    self.formatter = [[NSNumberFormatter alloc] init];
    [self.formatter setUsesSignificantDigits:NO];
    [self.formatter setMaximumSignificantDigits:2];
    [self.formatter setMaximumFractionDigits:1];
    
    double number = 292.0;
    double numberInMeters = number * kMilesToMetersCoefficient;
    double numberInMiles = numberInMeters * kMetersToMilesCoefficient;
    self.number = @(numberInMiles);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFormattedNumberShouldEqualOriginalNumber
{
    XCTAssertEqualObjects(@"292", [self.formatter stringFromNumber:self.number]);
}

@end
