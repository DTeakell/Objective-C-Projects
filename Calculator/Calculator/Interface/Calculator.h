//
//  Calculator.h
//  Calculator
//
//  Created by Dillon Teakell on 4/30/25.
//
//
//  Calculator Interface
//
//
@interface Calculator : NSObject {
    double accumulator;
}

// Accumulator Methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

// Artithmitic Methods
- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;

// Print Methods
- (void) print;

@end
