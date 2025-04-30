//
//  main.m
//  Calculator
//
//  Created by Dillon Teakell on 4/30/25.
//
//
//  A calculator that takes in values and prints the result to the console
//
//
#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    NSLog(@"Calculator Allocated");
    
    // Set the calculator accumulator
    [calculator setAccumulator: 35.0];
    
    [calculator add: 15];
    
    [calculator subtract: 5];
    
    [calculator multiply: 2];
    
    [calculator divide: 1];
    
    [calculator print];
    
    [calculator release];
    
    NSLog(@"Calculator Deallocated");
    
    [pool drain];
    
    return 0;
}
