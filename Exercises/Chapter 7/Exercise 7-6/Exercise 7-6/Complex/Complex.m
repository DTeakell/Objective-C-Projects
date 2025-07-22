//
//  Complex.m
//  Exercise-4-6
//
//  Created by Dillon Teakell on 5/5/25.
//
//
//  Complex Implementation File
//

#import <Foundation/Foundation.h>
#import "Complex.h"

@implementation Complex

- (void) setReal: (double) a {
    real = a;
}

- (void) setImaginary: (double) b {
    imaginary = b;
}

- (Complex *)add:(Complex *)complexNumber {
    Complex *sum = [[Complex alloc] init];
    double real = self.real + complexNumber.real;
    double imaginary = self.imaginary + complexNumber.imaginary;
    
    sum.real = real;
    sum.imaginary = imaginary;
    
    return [sum autorelease];
}


- (void) print {
    NSLog(@"%.0f + %.0fi", real, imaginary);
}

- (double) real {
    return real;
}

- (double) imaginary {
    return imaginary;
}


@end
