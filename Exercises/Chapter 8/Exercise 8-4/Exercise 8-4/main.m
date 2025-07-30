//
//  main.m
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import <Foundation/Foundation.h>
#import "Rectangle/Rectangle.h"
#import "XYPoint/XYPoint.h"
#import "Circle/Circle.h"
#import "Triangle/Triangle.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Rectangle *rectangle = [[Rectangle alloc] init];
    Circle *circle = [[Circle alloc] init];
    Triangle *triangle = [[Triangle alloc] init];
    
    rectangle.width = 23.44;
    rectangle.height = 55.43;
    
    [rectangle print];
    
    circle.diameter = 23.54;
    
    [circle print];
    
    triangle.base = 23.11;
    triangle.height = 67.5;
    triangle.sideA = 54.21;
    triangle.sideB = 21.3;
    
    [triangle print];
    
    [triangle release];
    [circle release];
    [rectangle release];
    
    [pool drain];
    return 0;
}
