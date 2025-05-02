//
//  Exercise-4-4.m
//  Exercises
//
//  Created by Dillon Teakell on 5/2/25.
//
//  A program to solve a polynomial
//

#import <Foundation/Foundation.h>
#import <math.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    double x = 2.55;
    
    double answer = ((3 * pow(x, 3) - 5 * pow(x, 2)) - 6);
    
    NSLog(@"%f", answer);
    
    [pool drain];
    
    return 0;
}
