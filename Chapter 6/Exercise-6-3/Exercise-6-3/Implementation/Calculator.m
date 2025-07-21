//
//  Calculator.m
//  Calculator
//
//  Created by Dillon Teakell on 4/30/25.
//
//
//  Calculator Implementation
//
//
#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

// Accumulator Methods
// Sets the accumulator to a specified value
- (void)setAccumulator:(double)value {
    accumulator = value;
}

// Returns the accumulator
- (double) accumulator {
    return accumulator;
}

// Clears the accumulator
- (void) clear {
    accumulator = 0;
}


// Arithmetic Methods
// Adds a value to the accumulator
- (void) add:(double)value {
    accumulator += value;
}

// Subtracts a value from the accumulator
- (void) subtract:(double)value {
    accumulator -= value;
}

// Multiplies the accumulator
- (void) multiply:(double)value {
    accumulator *= value;
}

- (void) divide:(double)value {
    accumulator /= value;
}


// Print Methods
- (void) print {
    NSLog(@"%f", accumulator);
}

@end
