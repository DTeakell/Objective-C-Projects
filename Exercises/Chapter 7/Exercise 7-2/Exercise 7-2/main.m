//
//  main.m
//  Exercise 7-2
//
//  Created by Dillon Teakell on 7/17/25.
//

#import <Foundation/Foundation.h>
#import "Fraction/Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Fraction *fraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    Fraction *result;
    
    [fraction setTo: 1 over: 5];
    [bFraction setTo: 5 over: 6];
    
    result = [fraction multiply: bFraction];
    [result print: NO];
    
    [fraction release];
    [bFraction release];
    
    [pool drain];
    return 0;
}


