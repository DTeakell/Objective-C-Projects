//
//  main.m
//  Exercise-5-4
//
//  Created by Dillon Teakell on 5/14/25.
//
//
//  Get the sum of the integers in an input

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // Set variables
    int value;
    int initialValue = 0;
    int result = 0;
    
    // Get user input
    NSLog(@"Please enter an integer: ");
    scanf("%i", &value);
    
    // Set the initial value
    initialValue = value;
    
    // Reverse the digits by getting remainder and adding them together
    while (value != 0) {
        int temp = value % 10; // Get remainder
        result += temp;
        value /= 10;
    }
    
    NSLog(@"The sum of %i is: %i", initialValue, result);
    
    [pool drain];
    return 0;
}
