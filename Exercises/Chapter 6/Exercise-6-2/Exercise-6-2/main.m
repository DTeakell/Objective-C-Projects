//
//  main.m
//  Exercise-6-2
//
//  Created by Dillon Teakell on 6/17/25.
//
//  Fix program 6.8A to where the accumulator doesn't show when the operator is unknown or divide by zero occurs.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    double value1, value2;
    
    char operator;
    
    Calculator *calculator = [[Calculator alloc] init];
    
    NSLog(@"Enter your expression below:");
    scanf("%lf %c %lf", &value1, &operator, &value2);
    
    [calculator setAccumulator: value1];
    
    switch (operator) {
        case '+':
            [calculator add: value2];
            NSLog(@"%.2f", [calculator accumulator]);
            break;
            
        case '-':
            [calculator subtract: value2];
            NSLog(@"%.2f", [calculator accumulator]);
            break;
            
        case '*':
            [calculator multiply: value2];
            NSLog(@"%.2f", [calculator accumulator]);
            break;
            
        case '/':
            if (value2 == 0) {
                NSLog(@"Cannot divide by 0 \n");
                break;
            } else {
                [calculator divide: value2];
                NSLog(@"%.2f", [calculator accumulator]);
            }
            break;
            
        default:
            NSLog(@"Unknown Operator");
            break;
    }
    
    [calculator release];
    
    [pool drain];
    
    return 0;
}
