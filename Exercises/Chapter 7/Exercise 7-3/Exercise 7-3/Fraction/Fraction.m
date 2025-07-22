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

- (void) print:(BOOL)reduceForDisplay {
    if (denominator == 0) {
        NSLog(@"0");
    }
    
    if (reduceForDisplay) {
        Fraction *copy = [[Fraction alloc] init];
        [copy setTo: self.numerator over: self.denominator];
        [copy reduce];
        NSLog(@"%i / %i", copy.numerator, copy.denominator);
        [copy release];
    } else {
        NSLog(@"%i / %i", self.numerator, self.denominator);
    }
}

- (void)setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}

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


- (void) reciprocal {
    int a = numerator;
    int tempA = a;
    
    numerator = denominator;
    denominator = tempA;
}


- (double) convertToDecimal {
    if (denominator == 0) {
        return 0;
    } else {
        return (double) numerator / denominator;
    }
}

@end

