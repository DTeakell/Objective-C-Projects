//
//  main.m
//  Exercise 8-1
//
//  Created by Dillon Teakell on 7/28/25.
//
//
//  Create a class 'ClassC' that inherits 'ClassA' and 'ClassB'

#import <Foundation/Foundation.h>
#import "ClassC.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    ClassB *b = [[ClassB alloc] init];
    ClassC *c = [[ClassC alloc] init];
    
    [b initVar];
    [c initVar];
    
    [b printVar];
    [c printVar];
    
    [b release];
    [c release];
    
    
    [pool drain];
    return 0;
}
