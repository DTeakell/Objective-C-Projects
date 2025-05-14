//
//  main.m
//  Exercise-5-2
//
//  Created by Dillon Teakell on 5/14/25.
//
//  Calculate the triangular value of every 5th number

#import <Foundation/Foundation.h>

// Calculates the triangular value of a given input value
int calculateTriangularValue (int value) {
    
    // Set the initial value to zero
    int triangularValue = value * (value + 1) / 2;
    
    return triangularValue;
}


int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int value = 50;
    int triangularValue = 0;
    
    // Header
    NSLog(@"Value         |       Triangle");
    
    // Calculate for every fifth number
    for (int i = 5; i <= value; i += 5) {
        triangularValue = calculateTriangularValue(i);
        NSLog(@"%-5i         |         %-5i", i, triangularValue);
    }
    
    [pool drain];
    return 0;
}
