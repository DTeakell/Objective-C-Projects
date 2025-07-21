//
//  Fraction.h
//  Fraction Test
//
//  Created by Dillon Teakell on 7/15/25.
//

/// A class representing a mathematical fraction, with integer numerator and denominator.
///
/// Provides basic arithmetic methods, reduction, and decimal (floating-point) conversion.
///
/// All arithmetic methods return new, reduced `Fraction` objects.
///
/// **Note**: Denominator must not be `0`.
@interface Fraction : NSObject

@property int numerator, denominator;

/// Prints the fraction to the console. If `reduceForDisplay` is `YES`, the fraction is reduced for display without modifying `self`.
- (void) print:(BOOL)reduceForDisplay;

/// Sets the numerator and denominator of the fraction. `n` is the numerator, and `d` is the denominator, respectively.
- (void) setTo: (int) n over: (int) d;

/// Returns a new `Fraction` that is the result of adding `addend` to the receiver.
- (Fraction *) add: (Fraction *) addend;

/// Returns a new `Fraction` that is the result of subtracting `subtrahend` from the receiver.
- (Fraction *) subtract: (Fraction *) subtrahend;

/// Returns a new `Fraction` that is the result of multiplying the receiver by `multiplicand`.
- (Fraction *) multiply: (Fraction *) multiplicand;

/// Returns a new `Fraction` that is the result of the receiver being divided by `divisor`.
- (Fraction *) divide: (Fraction *) divisor;

/// Reduces the receiver to its simplest form, modifying both its numerator and denominator values.
- (void) reduce;

/// Returns the decimal (floating-point) representation of the fraction.
- (double) convertToDecimal;

@end
