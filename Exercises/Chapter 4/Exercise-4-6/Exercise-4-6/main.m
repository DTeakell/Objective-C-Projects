//
//  main.m
//  Exercise-4-6
//
//  Created by Dillon Teakell on 5/5/25.
//
//  Define methods for a class called 'Complex' for complex numbers
//
//

#import <Foundation/Foundation.h>
#import "complex.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Complex *complex = [[Complex alloc] init];
    
    [complex setReal: 2];
    [complex setImaginary: 5];
    [complex print];
    
    [complex release];
    
    [pool drain];
    
    return 0;
}
