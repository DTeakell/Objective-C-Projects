//
//  Exercise-4-5.m
//  Exercises
//
//  Created by Dillon Teakell on 5/2/25.
//
//  A program that solves the problem below:
//
//
//
#import <Foundation/Foundation.h>
#import <math.h>

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    double numerator = ((3.31 * pow(10, -8)) + (2.01 * pow(10, -7)));
    double demoninator = ((7.16 * pow(10, -6)) + (2.01 * pow(10, -8)));
    
    double result = numerator / demoninator;
    
    NSLog(@"%f", result);
    
    [pool drain];
    
    return 0;
    
}

