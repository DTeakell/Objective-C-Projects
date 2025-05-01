//
//  main.m
//  Bitwise-Operators
//
//  Created by Dillon Teakell on 5/1/25.
//
//
//  Gets an integer from the user, shifts it left and right, and displays it in the console
//
//
#import <Foundation/Foundation.h>

NSString *intToBinary (int number);

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int number, shiftAmount;
    
    
    // Get user input
    NSLog(@"Enter an integer: ");
    scanf("%d", &number);
    
    NSLog(@"Enter the amount of bits to shift: ");
    scanf("%d", &shiftAmount);
    
    
    int leftShift = number << shiftAmount;
    int rightShift = number >> shiftAmount;
    
    
    // Print output
    NSLog(@"Original:       %d  (%@)", number, intToBinary(number));
    NSLog(@"Left Shift:     %d  (%@)", leftShift, intToBinary(leftShift));
    NSLog(@"Right Shift:    %d  (%@)", rightShift, intToBinary(rightShift));
    
    // Release pool
    [pool drain];
    
    return 0;
}

// Converts integer to binary
NSString *intToBinary (int number) {
    NSMutableString *binary = [NSMutableString string];
    for (int i = sizeof(int) * 8 - 1; i >= 0; i--) {
        int bit = (number >> i) & 1;
        [binary appendFormat:@"%d", bit];
        
        // Add a space every four bits.
        if (i % 4 == 0 && i != 0) {
            [binary appendString:@" "];
        }
    }
    return binary;
}
