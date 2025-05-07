//
//  main.m
//  Exercise-4-9
//
//  Created by Dillon Teakell on 5/7/25.
//
//
//  Add methods to calculator class
// 

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    [calculator add: -30];
    [calculator reciprocal];
    [calculator print];
    [calculator square];
    [calculator print];
    
    [calculator release];
    [pool drain];
    return 0;
}
