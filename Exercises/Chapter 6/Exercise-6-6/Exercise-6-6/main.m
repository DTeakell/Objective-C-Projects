//
//  main.m
//  Exercise-6-6
//
//  Created by Dillon Teakell on 6/18/25.
//
//
//  Write a program that takes in integers and prints their values, separated by new lines, in English.
//

#import <Foundation/Foundation.h>
#import <math.h>

void printDigitInEnglish(int digit) {
    switch (digit) {
        case 0: printf("zero\n"); break;
        case 1: printf("one\n"); break;
        case 2: printf("two\n"); break;
        case 3: printf("three\n"); break;
        case 4: printf("four\n"); break;
        case 5: printf("five\n"); break;
        case 6: printf("six\n"); break;
        case 7: printf("seven\n"); break;
        case 8: printf("eight\n"); break;
        case 9: printf("nine\n"); break;
        default: printf("?\n"); break;
    }
}

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    
    // Get input
    int input;
    
    NSLog(@"Please enter an integer: ");
    scanf("%i", &input);
    
    
    // Get number of digits in input
    if (input == 0) {
        printDigitInEnglish(input);
    } else {
        int temp = input;
        int numberOfDigits = 0;
        while (temp > 0) {
            temp /= 10;
            numberOfDigits++;
        }
        
        // Divide the input by the power of the number of digits to get the number
        for (int i = numberOfDigits - 1; i >= 0; i--) {
            int divisor = (int) pow(10, i);
            int digit = input / divisor;
            printDigitInEnglish(digit);
            input %= divisor;
        }
    }
    
    
    [pool drain];
    return 0;
}
