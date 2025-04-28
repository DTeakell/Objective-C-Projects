//
//  main.m
//  Hello-World
//
//  Created by Dillon Teakell on 4/28/25.
//
//  Print 'Hello, World!' to the console

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // Creates a reference-counted memory management system
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSLog(@"Hello, World!");
    
    // Decrements the reference counter if there are multiple instances, deallocates if 1.
    [pool drain];
    
    return 0;
    
}
