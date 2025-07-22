//
//  main.m
//  Exercise 7-3
//
//  Created by Dillon Teakell on 7/21/25.
//
//  Take input n from the user and crrate a summation based on that input
//  Modify Program 7.6 Result to Display Fraction

#import <Foundation/Foundation.h>
#import "Fraction/Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Fraction *fraction = [[Fraction alloc] init];
    Fraction *sum = [[Fraction alloc] init];
    Fraction *sum2 = nil;
    int i, n, pow2;
    
    [sum setTo: 0 over: 1];
    
    NSLog(@"Please enter value for n: ");
    scanf("%i", &n);
    
    pow2 = 2;
    
    for (i = 1; i <= n; ++i) {
        [fraction setTo: 1 over: pow2];
        sum2 = [[sum add: fraction] retain];
        [sum release];
        sum = sum2;
        pow2 *= 2;
    }
    
    [sum reduce];
    
    NSLog(@"After %i iterations, the sum is: \n", n);
    NSLog(@"Fraction: %i / %i", sum.numerator, sum.denominator);
    NSLog(@"Decimal: %g", [sum convertToDecimal]);
    
    [fraction release];
    [sum release];
    
    [pool drain];
    return 0;
}
