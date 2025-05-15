//
//  main.m
//  Exercise-5-3
//
//  Created by Dillon Teakell on 5/14/25.
//
//  Print a table of factorials
//

#import <Foundation/Foundation.h>


// Calculates the factorial of a given integer
int factorial(int a) {
    
    int result = 1;
    
    for (int i = a; i > 1; i--) {
        result *= i;
    }
    
    return result;
}


int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int a;
    
    int result;
    
    // Header
    NSLog(@"n     |      n!");
    
    // Create a table of factorials
    for (a = 1; a <= 10; a++) {
        result = factorial(a);
        NSLog(@"%-2i    |      %-2i", a, result);
    }
    
    [pool drain];
    return 0;
}
