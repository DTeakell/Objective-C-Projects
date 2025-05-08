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
- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;
- (double) changeSign;
- (double) reciprocal;
- (double) square;


// Print Methods
- (void) print;

@end
