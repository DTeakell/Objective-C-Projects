//
//  Fraction.h
//  Fraction Test
//
//  Created by Dillon Teakell on 7/15/25.
//

@interface Fraction : NSObject

@property int numerator, denominator;

/// Prints the fraction to the console
- (void) print;

/// Sets the numerator and denominator of the fraction
- (void) setTo: (int) n over: (int) d;

/// Adds a fraction to the initial fraction value
- (Fraction *) add: (Fraction *) addend;

/// Subtracts a fraction from the initial fraction value
- (Fraction *) subtract: (Fraction *) subtrahand;

/// Multiplies the initial fraction value by a fraction
- (Fraction *) multiply: (Fraction *) multiplihand;

/// Divides the initial fraction value by a fraction
- (Fraction *) divide: (Fraction *) divisor;

/// Reduces a fraction to its simplest form
- (void) reduce;

/// Converts the fraction to a decimal value
- (double) convertToDecimal;

@end
