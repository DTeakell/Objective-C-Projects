//
//  main.m
//  Exercise-6-3
//
//  Created by Dillon Teakell on 6/17/25.
//
//
//  Write a printing calculator program
//
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    NSLog(@"Begin Calculations \n");
    
    printf("'+' Add to accumulator\n");
    printf("'-' Subtract from accumulator\n");
    printf("'*' Multiply accumulator\n");
    printf("'/' Divide accumulator\n");
    printf("'S' Set accumulator\n");
    printf("'0 E' Exit Program\n");
    
    double value;
    
    char operator = '\0';
    
    while (operator != 'E') {
        
        NSLog(@"Please enter an expression to start. Ex. (10 +)");
        
        scanf("%lf %c", &value, &operator);
        
        
        switch (operator) {
            case '+':
                [calculator add: value];
                [calculator print];
                break;
                
            case '-':
                [calculator subtract: value];
                [calculator print];
                break;
                
            case '*':
                [calculator multiply: value];
                [calculator print];
                break;
                
            case '/':
                if (value == 0) {
                    NSLog(@"Cannot divide by 0");
                    break;
                } else {
                    [calculator divide: value];
                    [calculator print];
                }
                break;
                
            case 'S':
                [calculator setAccumulator: value];
                [calculator print];
                break;
                
            case 'E':
                [calculator print];
                break;
                
            default:
                NSLog(@"Unknown Operator. Please try again\n");
                
                break;
        }
    }
    
    
    [pool drain];
    return 0;
    
}

