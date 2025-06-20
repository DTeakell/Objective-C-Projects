//
//  main.m
//  Exercise-6-1
//
//  Created by Dillon Teakell on 6/17/25.
//
//
//  A program that takes two integers and determines if they are easily divisible by each other.
//

#import <Foundation/Foundation.h>

void determineDivisibility(int a, int b) {
    
    if (a % b == 0 || b % a == 0) {
        printf("These numbers are easily divisible \n");
    } else {
        printf("These numbers are not easily divisible \n");
    }
    
}



int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int a, b;
    
    NSLog(@"Please enter an integer: ");
    scanf("%i", &a);
    NSLog(@"Please enter another integer: ");
    scanf("%i", &b);
    
    determineDivisibility(a, b);
    
    [pool drain];
    return 0;
}

