//
//  main.m
//  Exercise 7-4
//
//  Created by Dillon Teakell on 7/22/25.
//
//
//  Write a test program to test negative fractions

#import <Foundation/Foundation.h>
#import "Fraction/Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Fraction *fraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    Fraction *result;
    
    [fraction setTo: -1 over: -4];
    [bFraction setTo: 3 over: 8];
    
    result = [fraction add: bFraction];
    
    [result print: NO];
    
    [fraction release];
    [bFraction release];
    
    [pool drain];
    return 0;
}
