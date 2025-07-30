//
//  main.m
//  Exercise 8-2
//
//  Created by Dillon Teakell on 7/29/25.
//
//
//  Modify Rectangle and XYPoint class to use floating-point numbers

#import <Foundation/Foundation.h>
#import "Rectangle/Rectangle.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Rectangle *rectangle = [[Rectangle alloc] init];
    XYPoint *origin = [[XYPoint alloc] init];
    
    [origin setCoordiantesX: 45.55 andY: 23.33];
    
    [rectangle setWidth: 25.60 andHeight: 55.76];
    [rectangle setOrigin: origin];
    
    [rectangle print];
    
    [rectangle release];
    
    [origin release];
    
    [pool drain];
    return 0;
}
