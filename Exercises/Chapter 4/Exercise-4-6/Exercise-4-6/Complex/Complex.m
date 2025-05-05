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

- (void) print {
    NSLog(@"%f + %f i", real, imaginary);
}

- (double) real {
    return real;
}

- (double) imaginary {
    return imaginary;
}

@end
