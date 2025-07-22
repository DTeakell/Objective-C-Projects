//
//  main.m
//  Exercise 7-6
//
//  Created by Dillon Teakell on 7/22/25.
//

#import <Foundation/Foundation.h>
#import "Complex/Complex.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Complex *aComplex = [[Complex alloc] init];
    Complex *bComplex = [[Complex alloc] init];
    Complex *result;
    
    [aComplex setReal: 3.4];
    [aComplex setImaginary: 8];
    
    [bComplex setReal: 3.6];
    [bComplex setImaginary: 7];
    
    result = [aComplex add: bComplex];
    
    [result print];
    
    [aComplex release];
    [bComplex release];
    
    [pool drain];
    return 0;
}
