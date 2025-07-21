//
//  Fraction.m
//  Fraction Test
//
//  Created by Dillon Teakell on 7/15/25.
//
#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

// Makes getters and setters for you
@synthesize numerator, denominator;

#pragma mark - Arithmatic Operations

/// Adds another fraction to the initial fraction value
- (Fraction *)add:(Fraction *)addend {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (numerator * addend.denominator) + (denominator * addend.numerator);
    result.denominator = denominator * addend.denominator;
    
    [result reduce];
    return [result autorelease];
}

- (Fraction *) subtract:(Fraction *)subtrahand {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (numerator * subtrahand.denominator) - (denominator * subtrahand.numerator);
    result.denominator = denominator * subtrahand.denominator;
    
    [result reduce];
    return [result autorelease];
}

- (Fraction *) multiply:(Fraction *)multiplihand {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * multiplihand.numerator;
    result.denominator = denominator * multiplihand.denominator;
    
    [result reduce];
    return [result autorelease];
}

- (Fraction *) divide:(Fraction *)divisor {
    Fraction *result = [[Fraction alloc] init];
    [divisor reciprocal];
    
    result.numerator = numerator * divisor.numerator;
    result.denominator = denominator * divisor.denominator;
    
    [result reduce];
    return [result autorelease];
}


#pragma mark - Utility Methods

/// Prints the fraction to the console
- (void) print {
    if (numerator == 0 || denominator == 0) {
        NSLog(@"0");
    } else {
        NSLog(@"%i / %i", numerator, denominator);
    }
}

/// Sets the numerator and denominator of the fraction
- (void)setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}

/// Reduces a fraction to its simplest form
- (void) reduce {
    int a = numerator;
    int b = denominator;
    int temp;
    
    while (b != 0) {
        temp = a % b;
        a = b;
        b = temp;
    }
    
    numerator /= a;
    denominator /= a;
}

/// Gets the reciprocal of a fraction
- (void) reciprocal {
    int a = numerator;
    int tempA = a;
    
    numerator = denominator;
    denominator = tempA;
}

/// Converts the fraction to a decimal value
- (double) convertToDecimal {
    if (numerator == 0 || denominator == 0) {
        return 0;
    } else {
        return numerator / denominator;
    }
}

@end

