//
//  main.m
//  Exercise 7-5
//
//  Created by Dillon Teakell on 7/22/25.
//

#import <Foundation/Foundation.h>
#import "Fraction/Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *fraction = [[Fraction alloc] init];
    
    [fraction setTo: 5 over: 3];
    
    [fraction print: NO];
    
    [fraction release];
    
    [pool drain];
    return 0;
}
