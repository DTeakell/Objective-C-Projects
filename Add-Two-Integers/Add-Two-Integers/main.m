//
//  main.m
//  Add-Two-Integers
//
//  Created by Dillon Teakell on 4/28/25.
//
//  Adds two numbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int x, y, sum;
    
    x = 2;
    y = 5;
    
    sum = x + y;
    
    NSLog(@"The sum of %i and %i is: %i", x, y, sum);
    
    [pool drain];
    return 0;
}
