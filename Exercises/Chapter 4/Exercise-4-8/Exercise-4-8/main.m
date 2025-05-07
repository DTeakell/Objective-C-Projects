//
//  main.m
//  Exercise-4-8
//
//  Created by Dillon Teakell on 5/7/25.
//
//  Modify Calculator to return the values of the accumulator from the arithmetic methods
//
//

#import <Foundation/Foundation.h>
#import "Calculator.h"


int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Calculator *calculator = [[Calculator alloc] init];
    
    [calculator clear];
    [calculator add: 10];
    [calculator subtract:5];
    [calculator multiply:2];
    [calculator divide:1];
    [calculator print];
    
    [calculator release];
    
    [pool drain];
    return 0;
}
