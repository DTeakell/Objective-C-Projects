//
//  Complex.h
//  Exercise-4-6
//
//  Created by Dillon Teakell on 5/5/25.
//
//
//  Complex Interface File
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject {
    
    /*
     A complex number has two parts:
     1. Real
     2. Imaginary
     
     It is written as 'a + b i' where 'a' is the real part, and 'b' is the imaginary part
     'i' is the imaginary unit, defined as i^2 = -1.
     The imaginary unit never changes and cannot be defined as anything else
     */
    
    double real;
    double imaginary;
}

// Sets the real value of the complex number
- (void) setReal: (double) a;

// Sets the imaginary value of the complex number
- (void) setImaginary: (double) b;

// Prints the complex number in 'a + b i' notation
- (void) print;

// Returns the real value
- (double) real;

// Returns the imaginary value
- (double) imaginary;

@end
