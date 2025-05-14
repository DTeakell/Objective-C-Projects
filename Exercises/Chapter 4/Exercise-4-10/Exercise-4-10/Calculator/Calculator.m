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
    [self print];
}

// Returns the accumulator
- (double) accumulator {
    return accumulator;
}

// Clears the accumulator
- (void) clear {
    accumulator = 0;
    [self print];
}


// Arithmetic Methods
// Adds a value to the accumulator and returns it
- (double) add:(double)value {
    accumulator += value;
    [self print];
    return accumulator;
}

// Subtracts a value from the accumulator and returns it
- (double) subtract:(double)value {
    accumulator -= value;
    [self print];
    return accumulator;
}

// Multiplies the accumulator and returns it
- (double) multiply:(double)value {
    accumulator *= value;
    [self print];
    return accumulator;
}

// Divides the accumulator and returns it
- (double) divide:(double)value {
    accumulator /= value;
    [self print];
    return accumulator;
}

/* Changes the sign of the accumulator.
    Ex. -1 = 1
    2 = -2
 */
- (double) changeSign {
    return accumulator *= -1;
}

// Gives the reciprocal of the accumulator
- (double) reciprocal {
    return accumulator = 1 / accumulator;
}

// Gives the value of the accumulator squared
- (double) square {
    return accumulator *= accumulator;
}


// Memory Methods
// Clear memory
- (double) memoryClear {
    return memory = 0;
}

// Stores the accumulator into memory
- (double) memoryStore {
    memory = accumulator;
    return memory;
}

// Returns memory
- (double) memoryRecall {
    return memory;
}

// Adds the accumulator to memory
- (double) memoryAdd {
    return memory += accumulator;
}

// Subtracts the accumulator from memory
- (double) memorySubtract {
    return memory -= accumulator;
}

// Print Method
- (void) print {
    NSLog(@"The current accumulator value is: %f\n", [self accumulator]);
    NSLog(@"The value in memory is: %f\n", memory);
}

@end
