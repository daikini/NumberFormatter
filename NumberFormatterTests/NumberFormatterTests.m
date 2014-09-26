//
//  NumberFormatterTests.m
//  NumberFormatterTests
//
//  Created by Jonathan Younger on 9/26/14.
//  Copyright (c) 2014 Jonathan Younger. All rights reserved.
//

#import "NumberFormatterTests.h"

@implementation NumberFormatterTests

- (void)testFormattedNumberShouldEqualOriginalNumberWhenUsingTwoSignificantDigits
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setUsesSignificantDigits:NO];
    [formatter setMaximumSignificantDigits:2];
    
    NSNumber *number = @(291.99);
    
    STAssertEqualObjects(@"292", [formatter stringFromNumber:number], nil);
}

@end
