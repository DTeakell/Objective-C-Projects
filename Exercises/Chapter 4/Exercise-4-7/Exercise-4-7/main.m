//
//  main.m
//  Exercise-4-7
//
//  Created by Dillon Teakell on 5/6/25.
//
//
//  Create a Rectangle class and implement methods for calculating area and perimeter
//
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    // Allocate memory
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Rectangle *rectangle = [[Rectangle alloc] init];
    
    // Method calls
    [rectangle setWidth: 22];
    [rectangle setHeight: 20];
    [rectangle printAll];
    
    // Release memory
    [rectangle release];
    [pool drain];
    
    return 0;
}
