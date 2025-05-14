//
//  main.m
//  Exercise-5-1
//
//  Created by Dillon Teakell on 5/14/25.
//
//
//  Generate a table of n and n^2
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int n, count, nSquare;
    
    // Get user input
    NSLog(@"Enter an integer: ");
    scanf("%i", &count);
    
    // Header
    NSLog(@"n       |       n^2");
    
    // Create a square table
    for (n = 1; n < count + 1; n++) {
        nSquare = n * n;
        NSLog(@"%-2i      |       %-2i", n, nSquare);
    }
    
    [pool drain];
    return 0;
}
