//
//  main.m
//  Exercise-6-7
//
//  Created by Dillon Teakell on 6/19/25.
//
//  Print a list of prime numbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int number, divisor;
    int count = 0;
    
    // Go through a certain amount of numbers (100)
    for (number = 1; number <= 100; number++) {
        
        count = 0;
        
        for (divisor = 1; divisor <= number; divisor++) {
            
            if (number % divisor == 0) {
                count ++;
            }
        }
        
        if (count > 2) {
            continue;
        } else {
            printf("%i\n", number);
        }
    }
    
    
    [pool drain];
    return 0;
}
