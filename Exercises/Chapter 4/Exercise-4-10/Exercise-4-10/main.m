//
//  main.m
//  Exercise-4-10
//
//  Created by Dillon Teakell on 5/8/25.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    [calculator setAccumulator:200];
    [calculator memoryStore];
    [calculator print];
    
    [calculator release];
    [pool drain];
    return 0;
}
