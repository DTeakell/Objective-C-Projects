//
//  main.m
//  Exercise 8-3
//
//  Created by Dillon Teakell on 7/29/25.
//
//
//  Implement a 'translate' method in the Rectangle class

#import <Foundation/Foundation.h>
#import "Rectangle/Rectangle.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Rectangle *rectangle = [[Rectangle alloc] init];
    XYPoint *origin = [[XYPoint alloc] init];
    XYPoint *translation = [[XYPoint alloc] init];
    
    [origin setCoordiantesX: 45.55 andY: 23.33];
    [translation setCoordiantesX: 66.544 andY: 21.445];
    
    
    [rectangle setWidth: 25.60 andHeight: 55.76];
    [rectangle setOrigin: origin];
    [rectangle translate: translation];
    [rectangle print];
    
    [rectangle release];
    
    [origin release];
    
    [pool drain];
    return 0;
}
